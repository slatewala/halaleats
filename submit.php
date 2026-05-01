<?php $page_title = 'Add Restaurant — HalalEats'; include 'header.php'; ?>
<div class="container">
  <h2>Add a halal restaurant</h2>
  <p style="color:#666">Click on the map to set the location, or use your current location.</p>

  <div class="card">
    <label>Name *</label><input id="name" required>
    <label>Cuisine</label><input id="cuisine" placeholder="e.g. Pakistani, Turkish, Burger">
    <label>Address</label><input id="address">
    <div style="display:grid;grid-template-columns:1fr 1fr;gap:.7rem">
      <div><label>City</label><input id="city"></div>
      <div><label>Country</label><input id="country"></div>
    </div>
    <label>Halal Type *</label>
    <select id="halal_type">
      <option value="full">Fully Halal (no alcohol)</option>
      <option value="partial">Partial (some halal items)</option>
      <option value="alcohol_served">Halal meat but alcohol served</option>
      <option value="unknown">Unverified / Unsure</option>
      <option value="none">Not Halal</option>
    </select>
    <div style="display:flex;gap:1rem;margin-top:.7rem;flex-wrap:wrap">
      <label><input type="checkbox" id="certified" style="width:auto"> Certified halal</label>
      <label><input type="checkbox" id="zabihah" style="width:auto"> Zabihah meat</label>
      <label><input type="checkbox" id="veg_friendly" style="width:auto"> Veg-friendly</label>
    </div>
    <label>Certifying body (if any)</label><input id="cert_body">
    <div style="display:grid;grid-template-columns:1fr 1fr;gap:.7rem">
      <div><label>Phone</label><input id="phone"></div>
      <div><label>Website</label><input id="website" placeholder="https://"></div>
    </div>

    <label>Location * — click on map</label>
    <div id="pick-map" style="height:380px;border-radius:8px;border:1px solid #ddd"></div>
    <div style="display:flex;gap:.5rem;margin-top:.5rem;flex-wrap:wrap">
      <button class="btn secondary" onclick="useMyLocation()">Use my location</button>
      <span id="picked" style="font-size:.85rem;color:#666;align-self:center"></span>
    </div>

    <div style="margin-top:1rem;display:flex;gap:.5rem">
      <button class="btn" onclick="submit()">Submit</button>
      <a class="btn secondary" href="index.php">Cancel</a>
    </div>
  </div>
</div>

<script>
if (!HE.user) { location.href = 'login.php?next=submit.php'; }

let pickMap, pickMarker, pickedLat=null, pickedLng=null;

window.addEventListener('load', () => {
  pickMap = L.map('pick-map').setView([24.4539, 54.3773], 12);
  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',{maxZoom:19}).addTo(pickMap);
  pickMap.on('click', e => setPick(e.latlng.lat, e.latlng.lng));
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(p => {
      pickMap.setView([p.coords.latitude, p.coords.longitude], 14);
    });
  }
});

function setPick(lat, lng) {
  pickedLat = lat; pickedLng = lng;
  if (pickMarker) pickMarker.setLatLng([lat,lng]);
  else pickMarker = L.marker([lat,lng]).addTo(pickMap);
  document.getElementById('picked').textContent = `Pinned: ${lat.toFixed(5)}, ${lng.toFixed(5)}`;
}

function useMyLocation() {
  if (!navigator.geolocation) return HE.toast('Geolocation unavailable');
  navigator.geolocation.getCurrentPosition(p => {
    pickMap.setView([p.coords.latitude, p.coords.longitude], 16);
    setPick(p.coords.latitude, p.coords.longitude);
  });
}

async function submit() {
  if (pickedLat===null) return HE.toast('Pick location on map');
  const data = {
    action:'add',
    name: document.getElementById('name').value.trim(),
    address: document.getElementById('address').value.trim(),
    city: document.getElementById('city').value.trim(),
    country: document.getElementById('country').value.trim(),
    cuisine: document.getElementById('cuisine').value.trim(),
    phone: document.getElementById('phone').value.trim(),
    website: document.getElementById('website').value.trim(),
    halal_type: document.getElementById('halal_type').value,
    certified: document.getElementById('certified').checked ? 1 : 0,
    zabihah: document.getElementById('zabihah').checked ? 1 : 0,
    veg_friendly: document.getElementById('veg_friendly').checked ? 1 : 0,
    cert_body: document.getElementById('cert_body').value.trim(),
    lat: pickedLat, lng: pickedLng
  };
  if (!data.name) return HE.toast('Name required');
  const r = await HE.call('restaurants.php', data);
  if (r.success) { HE.toast('Added! +5 trust score'); setTimeout(()=>location.href='restaurant.php?rid='+r.rid, 800); }
  else HE.toast(r.message||'Failed');
}
</script>
<?php include 'footer.php'; ?>

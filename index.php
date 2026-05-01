<?php $page_title = 'HalalEats — Find verified halal food near you'; include 'header.php'; ?>

<div class="split">
  <div class="list-pane">
    <div class="filter-bar">
      <input id="q" placeholder="Search name/city">
      <select id="halal">
        <option value="">All halal</option>
        <option value="full">Fully Halal</option>
        <option value="partial">Partial</option>
        <option value="alcohol_served">Alcohol Served</option>
        <option value="unknown">Unverified</option>
      </select>
      <input id="cuisine" placeholder="Cuisine">
      <button class="btn" onclick="loadRests()">Filter</button>
    </div>
    <div id="rest-list"></div>
  </div>
  <div id="map"></div>
</div>

<script>
let map, markers = [], userLat=null, userLng=null;

function initMap() {
  map = L.map('map').setView([24.4539, 54.3773], 12);
  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19, attribution: '© OpenStreetMap'
  }).addTo(map);

  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(p => {
      userLat = p.coords.latitude; userLng = p.coords.longitude;
      map.setView([userLat, userLng], 13);
      L.marker([userLat,userLng],{title:'You'}).addTo(map).bindPopup('You are here');
      loadRests();
    }, () => loadRests(), { timeout: 6000 });
  } else loadRests();

  map.on('moveend', () => { if (!userLat) loadRests(); });
}

function clearMarkers() { markers.forEach(m=>map.removeLayer(m)); markers=[]; }

function pinIcon(halal) {
  const icon = HE.halalIcon(halal);
  return L.divIcon({
    className:'he-pin',
    html:`<div style="background:#fff;border:2px solid #0a7d3e;border-radius:50%;width:34px;height:34px;display:flex;align-items:center;justify-content:center;font-size:18px;box-shadow:0 2px 4px rgba(0,0,0,.3)">${icon}</div>`,
    iconSize:[34,34], iconAnchor:[17,17]
  });
}

async function loadRests() {
  const c = map.getCenter();
  const params = {
    action:'list',
    lat: userLat || c.lat,
    lng: userLng || c.lng,
    radius: 50,
    q: document.getElementById('q').value,
    halal: document.getElementById('halal').value,
    cuisine: document.getElementById('cuisine').value
  };
  const res = await HE.get('restaurants.php', params);
  if (!res.success) return HE.toast(res.message || 'Load failed');
  renderRests(res.restaurants);
}

function renderRests(rows) {
  clearMarkers();
  const list = document.getElementById('rest-list');
  if (!rows.length) {
    list.innerHTML = `<div class="empty"><p>No restaurants found here.</p><a class="btn" href="submit.php">+ Be first to add one</a></div>`;
    return;
  }
  list.innerHTML = rows.map(r => `
    <div class="rest-card" onclick="location.href='restaurant.php?rid=${r.rid}'">
      <div class="thumb" style="${r.photo?`background-image:url(${r.photo})`:''}">${r.photo?'':HE.halalIcon(r.halal_type)}</div>
      <div style="flex:1">
        <h3>${escapeHtml(r.name)}</h3>
        <div class="meta">
          <span class="stars">${HE.stars(r.avg_rating)}</span>
          <span>${r.rating_count||0} reviews</span>
          ${r.distance_km!==undefined?`<span>· ${(+r.distance_km).toFixed(1)} km</span>`:''}
        </div>
        <div class="meta">${escapeHtml(r.cuisine||'')} ${r.address?'· '+escapeHtml(r.address):''}</div>
        <div class="badges">
          <span class="badge ${r.halal_type}">${HE.halalLabel(r.halal_type)}</span>
          ${+r.certified?`<span class="badge cert">Certified</span>`:''}
          ${+r.zabihah?`<span class="badge zabihah">Zabihah</span>`:''}
          ${+r.veg_friendly?`<span class="badge veg">Veg-friendly</span>`:''}
        </div>
      </div>
    </div>
  `).join('');

  rows.forEach(r => {
    const m = L.marker([r.lat, r.lng], { icon: pinIcon(r.halal_type) }).addTo(map);
    m.bindPopup(`<b>${escapeHtml(r.name)}</b><br>${HE.halalLabel(r.halal_type)} · ${HE.stars(r.avg_rating)}<br><a href="restaurant.php?rid=${r.rid}">View</a>`);
    markers.push(m);
  });
}

function escapeHtml(s) { return (s||'').replace(/[&<>"']/g, c => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c])); }

window.addEventListener('load', initMap);
</script>

<?php include 'footer.php'; ?>

<?php $page_title = 'HalalEats — Find verified halal food near you'; include 'header.php'; ?>

<div class="split">
  <div class="list-pane">
    <div class="filter-bar">
      <div class="q-wrap">
        <input id="q" placeholder="Search restaurant or city..." autocomplete="off">
        <div id="city-dd" class="city-dd"></div>
      </div>
      <select id="halal">
        <option value="">All halal</option>
        <option value="full">Fully Halal</option>
        <option value="partial">Partial</option>
        <option value="alcohol_served">Alcohol Served</option>
        <option value="unknown">Unverified</option>
      </select>
      <input id="cuisine" placeholder="Cuisine">
      <button class="btn icon-btn" onclick="updateMyLocation()" title="Use my current location">📍</button>
      <button class="btn" onclick="loadRests()">Filter</button>
    </div>
    <div id="city-pills" class="city-pills"></div>
    <div id="rest-list"></div>
  </div>
  <div id="map"></div>
</div>

<script>
let map, markers = [], userLat=null, userLng=null, youMarker=null;
let activeCityFilter = '';

function initMap() {
  map = L.map('map').setView([24.4539, 54.3773], 12);
  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19, attribution: '© OpenStreetMap'
  }).addTo(map);

  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(p => {
      userLat = p.coords.latitude; userLng = p.coords.longitude;
      map.setView([userLat, userLng], 13);
      placeYouMarker();
      loadRests();
    }, () => loadRests(), { timeout: 6000 });
  } else loadRests();

  map.on('moveend', () => { if (!userLat && !activeCityFilter) loadRests(); });

  loadTopCities();
  bindCityAutocomplete();
}

function placeYouMarker() {
  if (youMarker) map.removeLayer(youMarker);
  youMarker = L.marker([userLat, userLng], { title: 'You are here' }).addTo(map).bindPopup('📍 You are here');
}

function updateMyLocation() {
  if (!navigator.geolocation) return HE.toast('Geolocation unavailable');
  HE.toast('Locating...');
  navigator.geolocation.getCurrentPosition(p => {
    userLat = p.coords.latitude;
    userLng = p.coords.longitude;
    activeCityFilter = '';
    document.getElementById('q').value = '';
    map.setView([userLat, userLng], 14);
    placeYouMarker();
    loadRests();
    HE.toast('Location updated');
  }, err => HE.toast('Location denied or unavailable'),
  { enableHighAccuracy: true, timeout: 10000, maximumAge: 0 });
}

async function loadTopCities() {
  const r = await HE.get('cities.php', { limit: 15 });
  if (!r.success) return;
  const wrap = document.getElementById('city-pills');
  wrap.innerHTML = r.cities.map(c => `
    <span class="city-pill" onclick="jumpToCity(${c.lat},${c.lng},'${escAttr(c.city)}','${escAttr(c.country)}')">${esc(c.city)} <span class="pill-count">${c.count}</span></span>
  `).join('');
}

function bindCityAutocomplete() {
  const q = document.getElementById('q');
  const dd = document.getElementById('city-dd');
  let timer;

  q.addEventListener('input', e => {
    clearTimeout(timer);
    const val = e.target.value.trim();
    if (val.length < 2) { dd.style.display = 'none'; return; }
    timer = setTimeout(() => showCitySuggestions(val), 200);
  });

  q.addEventListener('focus', () => {
    if (q.value.trim().length >= 2) showCitySuggestions(q.value.trim());
  });

  document.addEventListener('click', e => {
    if (!e.target.closest('.q-wrap')) dd.style.display = 'none';
  });

  q.addEventListener('keydown', e => {
    if (e.key === 'Enter') {
      e.preventDefault();
      const active = dd.querySelector('.dd-item.active') || dd.querySelector('.dd-item');
      if (active && dd.style.display !== 'none') active.click();
      else loadRests();
    } else if (e.key === 'ArrowDown' || e.key === 'ArrowUp') {
      e.preventDefault();
      const items = [...dd.querySelectorAll('.dd-item')];
      if (!items.length) return;
      let idx = items.findIndex(i => i.classList.contains('active'));
      items.forEach(i => i.classList.remove('active'));
      idx = e.key === 'ArrowDown' ? (idx + 1) % items.length : (idx - 1 + items.length) % items.length;
      items[idx].classList.add('active');
      items[idx].scrollIntoView({ block: 'nearest' });
    } else if (e.key === 'Escape') {
      dd.style.display = 'none';
    }
  });
}

async function showCitySuggestions(prefix) {
  const r = await HE.get('cities.php', { q: prefix, limit: 30 });
  const dd = document.getElementById('city-dd');
  if (!r.success || !r.cities.length) { dd.style.display = 'none'; return; }
  dd.innerHTML = r.cities.map(c => `
    <div class="dd-item" onclick="jumpToCity(${c.lat},${c.lng},'${escAttr(c.city)}','${escAttr(c.country)}')">
      <div>${esc(c.city)} <span class="country">${esc(c.country)}</span></div>
      <span class="count">${c.count}</span>
    </div>`).join('');
  dd.style.display = 'block';
}

function jumpToCity(lat, lng, city, country) {
  userLat = null; userLng = null;
  if (youMarker) { map.removeLayer(youMarker); youMarker = null; }
  activeCityFilter = city;
  document.getElementById('q').value = city;
  document.getElementById('city-dd').style.display = 'none';
  map.setView([lat, lng], 12);
  loadRests();
  HE.toast(`Showing ${city}`);
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
  const qVal = document.getElementById('q').value.trim();
  const params = {
    action: 'list',
    lat: userLat || c.lat,
    lng: userLng || c.lng,
    radius: activeCityFilter ? 200 : 50,
    q: (qVal === activeCityFilter) ? '' : qVal,
    halal: document.getElementById('halal').value,
    cuisine: document.getElementById('cuisine').value,
    city: activeCityFilter
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
        <h3>${esc(r.name)}</h3>
        <div class="meta">
          <span class="stars">${HE.stars(r.avg_rating)}</span>
          <span>${r.rating_count||0} reviews</span>
          ${r.distance_km!==undefined?`<span>· ${(+r.distance_km).toFixed(1)} km</span>`:''}
        </div>
        <div class="meta">${esc(r.cuisine||'')} ${r.address?'· '+esc(r.address):''}</div>
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
    m.bindPopup(`<b>${esc(r.name)}</b><br>${HE.halalLabel(r.halal_type)} · ${HE.stars(r.avg_rating)}<br><a href="restaurant.php?rid=${r.rid}">View</a>`);
    markers.push(m);
  });
}

function esc(s) { return (s||'').toString().replace(/[&<>"']/g, c => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c])); }
function escAttr(s) { return (s||'').toString().replace(/'/g, "\\'").replace(/"/g,'&quot;'); }

window.addEventListener('load', initMap);
</script>

<?php include 'footer.php'; ?>

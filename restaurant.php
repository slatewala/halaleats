<?php $page_title = 'Restaurant — HalalEats'; include 'header.php'; ?>
<div class="container" id="page"></div>

<script>
const rid = parseInt(new URLSearchParams(location.search).get('rid')) || 0;
if (!rid) { document.getElementById('page').innerHTML = '<div class="empty">Restaurant not found.</div>'; }

async function load() {
  const res = await HE.get('restaurants.php', { action:'get', rid });
  if (!res.success) { document.getElementById('page').innerHTML = `<div class="empty">${res.message}</div>`; return; }
  render(res.restaurant, res.reviews, res.photos);
}

function render(r, reviews, photos) {
  document.title = r.name + ' — HalalEats';
  const totalVerify = (+r.verify_yes) + (+r.verify_no);
  const yesPct = totalVerify ? (+r.verify_yes / totalVerify * 100) : 0;

  const shareUrl = encodeURIComponent(HE.shareUrl(r.rid));
  const shareTxt = encodeURIComponent(`${r.name} — ${HE.halalLabel(r.halal_type)} on HalalEats`);

  document.getElementById('page').innerHTML = `
    <div class="hero" style="${r.photo?`background-image:url(${r.photo})`:'background:#0a7d3e'}">
      <div>
        <h1 style="margin:0">${esc(r.name)}</h1>
        <div>${esc(r.cuisine||'')} · ${esc(r.city||'')}</div>
      </div>
    </div>

    <div class="card">
      <div style="display:flex;gap:1rem;align-items:center;flex-wrap:wrap">
        <div>
          <span class="badge ${r.halal_type}">${HE.halalLabel(r.halal_type)}</span>
          ${+r.certified?`<span class="badge cert">Certified${r.cert_body?': '+esc(r.cert_body):''}</span>`:''}
          ${+r.zabihah?`<span class="badge zabihah">Zabihah</span>`:''}
          ${+r.veg_friendly?`<span class="badge veg">Veg-friendly</span>`:''}
        </div>
        <div class="stars" style="font-size:1.3rem">${HE.stars(r.avg_rating)} <span style="color:#666;font-size:.9rem">(${r.rating_count||0})</span></div>
      </div>
      <p>${esc(r.address||'')}</p>
      ${r.phone?`<p>📞 <a href="tel:${esc(r.phone)}">${esc(r.phone)}</a></p>`:''}
      ${r.website?`<p>🌐 <a href="${esc(r.website)}" target="_blank" rel="noopener">${esc(r.website)}</a></p>`:''}
      <p><a class="btn secondary" target="_blank" href="https://www.openstreetmap.org/?mlat=${r.lat}&mlon=${r.lng}#map=18/${r.lat}/${r.lng}">Open in Map</a>
      <a class="btn secondary" target="_blank" href="https://www.google.com/maps/dir/?api=1&destination=${r.lat},${r.lng}">Directions</a>
      ${HE.user?`<button class="btn gold" onclick="favorite()">☆ Save</button>`:''}</p>
    </div>

    <div class="card">
      <h3>Community Halal Verification</h3>
      <div class="verify-row">
        <div class="verify-bar">
          <div class="yes" style="width:${yesPct}%"></div>
          <div class="no" style="width:${100-yesPct}%"></div>
        </div>
        <div style="font-size:.85rem;white-space:nowrap">${r.verify_yes} ✅ · ${r.verify_no} ❌</div>
      </div>
      ${HE.user?`
        <div style="display:flex;gap:.5rem;margin-top:.7rem">
          <button class="btn" onclick="vote('yes')">✅ Confirm halal</button>
          <button class="btn danger" onclick="vote('no')">❌ Not halal</button>
        </div>`:`<p style="font-size:.85rem;color:#666"><a href="login.php">Login</a> to verify.</p>`}
    </div>

    <div class="card share-card">
      <h3>Share</h3>
      <div class="share-btns">
        <a href="https://wa.me/?text=${shareTxt}%20${shareUrl}" target="_blank">📱 WhatsApp</a>
        <a href="https://twitter.com/intent/tweet?text=${shareTxt}&url=${shareUrl}" target="_blank">🐦 Twitter</a>
        <a href="https://www.facebook.com/sharer/sharer.php?u=${shareUrl}" target="_blank">📘 Facebook</a>
        <a href="#" onclick="navigator.clipboard.writeText(decodeURIComponent('${shareUrl}')).then(()=>HE.toast('Link copied'));return false">🔗 Copy link</a>
      </div>
    </div>

    <div class="card">
      <h3>Reviews</h3>
      ${HE.user?`
        <div style="margin-bottom:1rem">
          <select id="rate"><option value="">Rating</option>${[5,4,3,2,1].map(n=>`<option value="${n}">${'★'.repeat(n)}</option>`).join('')}</select>
          <textarea id="rbody" rows="3" placeholder="Your experience..." style="margin-top:.4rem"></textarea>
          <button class="btn" onclick="submitReview()" style="margin-top:.4rem">Post review</button>
        </div>`:`<p style="font-size:.85rem;color:#666"><a href="login.php">Login</a> to leave a review.</p>`}
      ${reviews.length?reviews.map(rv=>`
        <div class="review">
          <div class="who">${esc(rv.name)} <span class="stars">${'★'.repeat(rv.rating)}</span></div>
          <div class="when">${rv.created_at}</div>
          <div>${esc(rv.body||'')}</div>
        </div>`).join(''):'<p style="color:#666">No reviews yet.</p>'}
    </div>

    <div class="card" id="map-mini" style="height:300px;padding:0;overflow:hidden"></div>
  `;

  const mini = L.map('map-mini').setView([r.lat,r.lng], 15);
  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',{maxZoom:19}).addTo(mini);
  L.marker([r.lat,r.lng]).addTo(mini).bindPopup(esc(r.name)).openPopup();
}

async function vote(v) {
  const r = await HE.call('verify.php', { rid, vote: v });
  if (r.success) { HE.toast('Vote saved'); load(); } else HE.toast(r.message||'Failed');
}
async function submitReview() {
  const rating = +document.getElementById('rate').value;
  const body = document.getElementById('rbody').value;
  if (!rating) return HE.toast('Pick a rating');
  const r = await HE.call('review.php', { rid, rating, body });
  if (r.success) { HE.toast('Review posted'); load(); } else HE.toast(r.message||'Failed');
}
async function favorite() {
  const r = await HE.call('favorite.php', { rid });
  if (r.success) HE.toast(r.favorited?'Saved':'Removed');
  else HE.toast(r.message||'Failed');
}
function esc(s) { return (s||'').toString().replace(/[&<>"']/g, c=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c])); }
if (rid) load();
</script>
<?php include 'footer.php'; ?>

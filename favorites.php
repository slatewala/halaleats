<?php $page_title = 'Saved — HalalEats'; include 'header.php'; ?>
<div class="container">
  <h2>★ Saved restaurants</h2>
  <div id="list"></div>
</div>
<script>
if (!HE.user) location.href = 'login.php?next=favorites.php';
async function load() {
  const r = await HE.call('favorite.php', { rid:0, action:'list' });
  const el = document.getElementById('list');
  if (!r.success || !r.favorites.length) { el.innerHTML = '<div class="empty">No saved restaurants yet.</div>'; return; }
  el.innerHTML = r.favorites.map(rs=>`
    <div class="rest-card" onclick="location.href='restaurant.php?rid=${rs.rid}'" style="background:#fff;margin:.5rem 0;border:1px solid #e5e7eb;border-radius:8px">
      <div class="thumb" style="${rs.photo?`background-image:url(${rs.photo})`:''}">${rs.photo?'':HE.halalIcon(rs.halal_type)}</div>
      <div style="flex:1">
        <h3>${esc(rs.name)}</h3>
        <div class="meta">${HE.stars(rs.avg_rating)} · ${rs.rating_count||0} reviews</div>
        <div class="badges"><span class="badge ${rs.halal_type}">${HE.halalLabel(rs.halal_type)}</span></div>
      </div>
    </div>
  `).join('');
}
function esc(s) { return (s||'').toString().replace(/[&<>"']/g, c=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c])); }
load();
</script>
<?php include 'footer.php'; ?>

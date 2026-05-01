<?php $page_title = 'Leaderboard — HalalEats'; include 'header.php'; ?>
<div class="container" style="max-width:700px">
  <div class="card">
    <h2>🏆 Top Contributors</h2>
    <p style="color:#666;font-size:.9rem">Earn trust score: +5 add restaurant, +2 photo, +1 review/verify.</p>
    <div id="board"></div>
  </div>
</div>
<script>
async function load() {
  const r = await HE.get('leaderboard.php');
  const b = document.getElementById('board');
  if (!r.success || !r.leaders.length) { b.innerHTML = '<div class="empty">No data yet.</div>'; return; }
  b.innerHTML = r.leaders.map((u,i)=>`
    <div class="leaderboard-row">
      <div class="rank">${i+1}</div>
      <div class="name">${esc(u.name)}<div style="font-size:.8rem;color:#666">${esc(u.city||'')}${u.city&&u.country?', ':''}${esc(u.country||'')}</div></div>
      <div class="score">${u.trust_score}</div>
    </div>`).join('');
}
function esc(s) { return (s||'').toString().replace(/[&<>"']/g, c=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c])); }
load();
</script>
<?php include 'footer.php'; ?>

<?php $page_title = 'Admin — HalalEats'; include 'header.php'; ?>
<div class="container">
  <h2>🛡️ Admin Panel</h2>
  <div id="gate"></div>
  <div id="panel" style="display:none">
    <div id="stats" class="card"></div>

    <div class="tabs">
      <div class="tab active" data-tab="restaurants">Restaurants</div>
      <div class="tab" data-tab="users">Users</div>
      <div class="tab" data-tab="reviews">Reviews</div>
    </div>

    <div id="tab-restaurants" class="tab-pane">
      <div class="card">
        <select id="rest-filter" onchange="loadRests()" style="width:auto;display:inline-block">
          <option value="all">All</option>
          <option value="pending">Pending</option>
          <option value="approved">Approved</option>
          <option value="rejected">Rejected</option>
        </select>
        <button class="btn secondary" onclick="loadRests()">Refresh</button>
        <div id="rest-table" style="margin-top:1rem"></div>
      </div>
    </div>

    <div id="tab-users" class="tab-pane" style="display:none">
      <div class="card"><div id="user-table"></div></div>
    </div>

    <div id="tab-reviews" class="tab-pane" style="display:none">
      <div class="card"><div id="review-table"></div></div>
    </div>
  </div>
</div>

<script>
if (!HE.user) { location.href = 'login.php?next=admin.php'; }
else if (!HE.user.is_admin) {
  document.getElementById('gate').innerHTML = '<div class="card"><h3>Access denied</h3><p>You are not an admin. Contact site owner.</p></div>';
} else {
  document.getElementById('panel').style.display = 'block';
  init();
}

document.querySelectorAll('.tab').forEach(t => t.onclick = () => {
  document.querySelectorAll('.tab').forEach(x => x.classList.remove('active'));
  t.classList.add('active');
  document.querySelectorAll('.tab-pane').forEach(p => p.style.display = 'none');
  document.getElementById('tab-' + t.dataset.tab).style.display = 'block';
  if (t.dataset.tab === 'users') loadUsers();
  if (t.dataset.tab === 'reviews') loadReviews();
});

async function init() { loadStats(); loadRests(); }

async function loadStats() {
  const r = await HE.call('admin.php', { action:'stats' });
  if (!r.success) return;
  const s = r.stats;
  document.getElementById('stats').innerHTML = `
    <div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(120px,1fr));gap:.6rem;text-align:center">
      ${stat('Users', s.users)} ${stat('Admins', s.admins)} ${stat('Banned', s.banned)}
      ${stat('Restaurants', s.restaurants)} ${stat('Pending', s.pending)} ${stat('Approved', s.approved)}
      ${stat('Reviews', s.reviews)} ${stat('Verifies', s.verifications)} ${stat('Photos', s.photos)}
    </div>`;
}
function stat(label, n) {
  return `<div style="padding:.6rem;background:#f7f7f0;border-radius:8px"><div style="font-size:1.4rem;font-weight:700;color:#0a7d3e">${n}</div><div style="font-size:.75rem;color:#666">${label}</div></div>`;
}

async function loadRests() {
  const status = document.getElementById('rest-filter').value;
  const r = await HE.call('admin.php', { action:'restaurants', status });
  if (!r.success) return HE.toast(r.message);
  const t = document.getElementById('rest-table');
  if (!r.restaurants.length) { t.innerHTML = '<p>None.</p>'; return; }
  t.innerHTML = `<table style="width:100%;border-collapse:collapse;font-size:.9rem">
    <tr style="background:#f0f0e8;text-align:left"><th style="padding:.5rem">ID</th><th>Name</th><th>City</th><th>Halal</th><th>Status</th><th>★</th><th>By</th><th>Actions</th></tr>
    ${r.restaurants.map(x => `
      <tr style="border-bottom:1px solid #eee">
        <td style="padding:.5rem">${x.rid}</td>
        <td><a href="restaurant.php?rid=${x.rid}" target="_blank">${esc(x.name)}</a></td>
        <td>${esc(x.city||'')}</td>
        <td><span class="badge ${x.halal_type}">${HE.halalLabel(x.halal_type)}</span></td>
        <td><b style="color:${x.status==='approved'?'#0a7d3e':x.status==='rejected'?'#c0392b':'#f39c12'}">${x.status}</b></td>
        <td>${parseFloat(x.avg_rating||0).toFixed(1)} (${x.rating_count})</td>
        <td>${esc(x.submitter||'-')}</td>
        <td>
          ${x.status!=='approved'?`<button class="btn" onclick="setStatus(${x.rid},'approved')" style="padding:.3rem .6rem;font-size:.8rem">✓</button>`:''}
          ${x.status!=='rejected'?`<button class="btn danger" onclick="setStatus(${x.rid},'rejected')" style="padding:.3rem .6rem;font-size:.8rem">✗</button>`:''}
          <button class="btn danger" onclick="delRest(${x.rid})" style="padding:.3rem .6rem;font-size:.8rem">🗑</button>
        </td>
      </tr>`).join('')}
  </table>`;
}

async function setStatus(rid, status) {
  const r = await HE.call('admin.php', { action:'set_status', rid, status });
  if (r.success) { HE.toast('Updated'); loadRests(); loadStats(); } else HE.toast(r.message);
}
async function delRest(rid) {
  if (!confirm('Delete restaurant '+rid+'? This removes reviews/photos/votes too.')) return;
  const r = await HE.call('admin.php', { action:'delete_restaurant', rid });
  if (r.success) { HE.toast('Deleted'); loadRests(); loadStats(); } else HE.toast(r.message);
}

async function loadUsers() {
  const r = await HE.call('admin.php', { action:'users' });
  if (!r.success) return HE.toast(r.message);
  const t = document.getElementById('user-table');
  t.innerHTML = `<table style="width:100%;border-collapse:collapse;font-size:.9rem">
    <tr style="background:#f0f0e8;text-align:left"><th style="padding:.5rem">ID</th><th>Email</th><th>Name</th><th>City</th><th>Trust</th><th>Joined</th><th>Last login</th><th>Flags</th><th>Actions</th></tr>
    ${r.users.map(u => `
      <tr style="border-bottom:1px solid #eee">
        <td style="padding:.5rem">${u.userid}</td>
        <td>${esc(u.account)}</td>
        <td>${esc(u.name)}</td>
        <td>${esc(u.city||'')}</td>
        <td>${u.trust_score}</td>
        <td style="font-size:.75rem">${u.created_at||''}</td>
        <td style="font-size:.75rem">${u.last_login||'-'}</td>
        <td>${+u.is_admin?'<span class="badge cert">Admin</span>':''} ${+u.banned?'<span class="badge none">Banned</span>':''}</td>
        <td>
          <button class="btn secondary" onclick="setAdmin(${u.userid}, ${+u.is_admin?0:1})" style="padding:.3rem .6rem;font-size:.8rem">${+u.is_admin?'Demote':'Promote'}</button>
          <button class="btn danger" onclick="setBan(${u.userid}, ${+u.banned?0:1})" style="padding:.3rem .6rem;font-size:.8rem">${+u.banned?'Unban':'Ban'}</button>
        </td>
      </tr>`).join('')}
  </table>`;
}
async function setAdmin(userid, is_admin) {
  const r = await HE.call('admin.php', { action:'set_admin', userid, is_admin });
  if (r.success) { HE.toast('Updated'); loadUsers(); loadStats(); } else HE.toast(r.message);
}
async function setBan(userid, banned) {
  const r = await HE.call('admin.php', { action:'set_banned', userid, banned });
  if (r.success) { HE.toast('Updated'); loadUsers(); loadStats(); } else HE.toast(r.message);
}

async function loadReviews() {
  const r = await HE.call('admin.php', { action:'reviews' });
  if (!r.success) return HE.toast(r.message);
  const t = document.getElementById('review-table');
  t.innerHTML = `<table style="width:100%;border-collapse:collapse;font-size:.9rem">
    <tr style="background:#f0f0e8;text-align:left"><th style="padding:.5rem">ID</th><th>Restaurant</th><th>User</th><th>★</th><th>Body</th><th>When</th><th></th></tr>
    ${r.reviews.map(rv => `
      <tr style="border-bottom:1px solid #eee">
        <td style="padding:.5rem">${rv.reviewid}</td>
        <td><a href="restaurant.php?rid=${rv.rid}" target="_blank">${esc(rv.rest_name)}</a></td>
        <td>${esc(rv.name)} <small>(${esc(rv.account)})</small></td>
        <td>${'★'.repeat(rv.rating)}</td>
        <td style="max-width:300px">${esc(rv.body||'')}</td>
        <td style="font-size:.75rem">${rv.created_at}</td>
        <td><button class="btn danger" onclick="delReview(${rv.reviewid})" style="padding:.3rem .6rem;font-size:.8rem">🗑</button></td>
      </tr>`).join('')}
  </table>`;
}
async function delReview(reviewid) {
  if (!confirm('Delete review '+reviewid+'?')) return;
  const r = await HE.call('admin.php', { action:'delete_review', reviewid });
  if (r.success) { HE.toast('Deleted'); loadReviews(); loadStats(); } else HE.toast(r.message);
}

function esc(s) { return (s||'').toString().replace(/[&<>"']/g, c=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c])); }
</script>
<?php include 'footer.php'; ?>

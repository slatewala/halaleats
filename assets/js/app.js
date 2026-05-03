// HalalEats client
const HE = {
  api: 'apis/',
  user: JSON.parse(localStorage.getItem('he_user') || 'null'),
  token: localStorage.getItem('he_token') || '',

  setAuth(user, token) {
    this.user = user; this.token = token;
    localStorage.setItem('he_user', JSON.stringify(user));
    localStorage.setItem('he_token', token);
  },
  logout() {
    this.user = null; this.token = '';
    localStorage.removeItem('he_user'); localStorage.removeItem('he_token');
    location.reload();
  },
  async call(endpoint, data = {}, opts = {}) {
    const url = this.api + endpoint;
    const headers = { 'Content-Type': 'application/json' };
    if (this.token) headers['Authorization'] = 'Bearer ' + this.token;
    let body, h = headers;
    if (opts.form) {
      body = data; // FormData
      h = this.token ? { 'Authorization': 'Bearer ' + this.token } : {};
    } else {
      body = JSON.stringify(data);
    }
    const r = await fetch(url, { method: 'POST', headers: h, body });
    return r.json();
  },
  async get(endpoint, params = {}) {
    const qs = new URLSearchParams(params).toString();
    const headers = {};
    if (this.token) headers['Authorization'] = 'Bearer ' + this.token;
    const r = await fetch(this.api + endpoint + '?' + qs, { headers });
    return r.json();
  },
  toast(msg) {
    let t = document.getElementById('he-toast');
    if (!t) { t = document.createElement('div'); t.id='he-toast'; t.className='toast'; document.body.appendChild(t); }
    t.textContent = msg; t.classList.add('show');
    setTimeout(()=>t.classList.remove('show'), 2400);
  },
  halalLabel(t) {
    return ({full:'Fully Halal',partial:'Partial',alcohol_served:'Alcohol Served',none:'Not Halal',unknown:'Unverified'})[t] || t;
  },
  halalIcon(t) {
    return ({full:'✅',partial:'⚠️',alcohol_served:'🍷',none:'❌',unknown:'❓'})[t] || '❓';
  },
  stars(n) {
    n = parseFloat(n) || 0;
    const full = Math.floor(n), half = (n - full) >= .5;
    return '★'.repeat(full) + (half?'☆':'') + '☆'.repeat(5-full-(half?1:0));
  },
  shareUrl(rid) {
    return location.origin + location.pathname.replace(/\/[^\/]*$/, '/') + 'restaurant.php?rid=' + rid;
  }
};

function navMount() {
  const wrap = document.getElementById('he-nav');
  if (!wrap) return;
  if (HE.user) {
    const adminLink = HE.user.is_admin ? ` <a href="admin.php">🛡 Admin</a>` : '';
    wrap.innerHTML = `<a href="index.php">Map</a> <a href="submit.php">+ Add</a> <a href="leaderboard.php">Leaders</a> <a href="favorites.php">Saved</a>${adminLink} <a href="#" onclick="HE.logout();return false">Logout (${HE.user.name})</a>`;
  } else {
    wrap.innerHTML = `<a href="index.php">Map</a> <a href="leaderboard.php">Leaders</a> <a href="login.php">Login</a> <a href="register.php">Sign up</a>`;
  }
}
document.addEventListener('DOMContentLoaded', navMount);

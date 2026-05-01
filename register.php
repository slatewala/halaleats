<?php $page_title = 'Sign up — HalalEats'; include 'header.php'; ?>
<div class="container" style="max-width:420px">
  <div class="card">
    <h2>Create account</h2>
    <label>Email *</label><input id="account" type="email">
    <label>Name *</label><input id="name">
    <label>Password * (min 6)</label><input id="password" type="password">
    <div style="display:grid;grid-template-columns:1fr 1fr;gap:.7rem">
      <div><label>City</label><input id="city"></div>
      <div><label>Country</label><input id="country"></div>
    </div>
    <button class="btn" style="margin-top:1rem;width:100%" onclick="doRegister()">Sign up</button>
    <p style="text-align:center;margin-top:1rem;font-size:.9rem">Have an account? <a href="login.php">Login</a></p>
  </div>
</div>
<script>
async function doRegister() {
  const data = {
    account: document.getElementById('account').value.trim(),
    name: document.getElementById('name').value.trim(),
    password: document.getElementById('password').value,
    city: document.getElementById('city').value.trim(),
    country: document.getElementById('country').value.trim()
  };
  if (!data.account || !data.name || !data.password) return HE.toast('Fill required fields');
  const r = await HE.call('register.php', data);
  if (r.success) {
    HE.setAuth(r.user, r.token);
    location.href = 'index.php';
  } else HE.toast(r.message||'Failed');
}
</script>
<?php include 'footer.php'; ?>

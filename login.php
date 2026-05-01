<?php $page_title = 'Login — HalalEats'; include 'header.php'; ?>
<div class="container" style="max-width:420px">
  <div class="card">
    <h2>Login</h2>
    <label>Email or username</label><input id="account">
    <label>Password</label><input id="password" type="password">
    <button class="btn" style="margin-top:1rem;width:100%" onclick="doLogin()">Login</button>
    <p style="text-align:center;margin-top:1rem;font-size:.9rem">No account? <a href="register.php">Sign up</a></p>
  </div>
</div>
<script>
async function doLogin() {
  const account = document.getElementById('account').value.trim();
  const password = document.getElementById('password').value;
  if (!account || !password) return HE.toast('Fill all fields');
  const r = await HE.call('login.php', { account, password });
  if (r.success) {
    HE.setAuth(r.user, r.token);
    const next = new URLSearchParams(location.search).get('next') || 'index.php';
    location.href = next;
  } else HE.toast(r.message||'Login failed');
}
</script>
<?php include 'footer.php'; ?>

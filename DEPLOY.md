# Deploy to reliablesoftwares.com/halaleats/

Target: `https://reliablesoftwares.com/halaleats/` (PHP 8+ shared hosting / cPanel)

## 1. cPanel — create database

- cPanel → MySQL Databases
- DB name: `reliscom_halaleats`
- DB user: `reliscom_haluser` (or reuse existing)
- Strong password
- Add user to DB with **ALL PRIVILEGES**

## 2. Verify PHP version

- cPanel → MultiPHP Manager → set `reliablesoftwares.com` to **PHP 8.1+** (8.2 best)
- Test: create `phpinfo.php` with `<?php phpinfo();` → confirm version → delete

## 3. Upload code

Option A — git clone (if SSH enabled):
```bash
ssh user@reliablesoftwares.com
cd public_html
git clone https://github.com/slatewala/halaleats.git
cd halaleats
```

Option B — FTP/cPanel File Manager:
- Download repo zip from GitHub
- Upload + extract into `public_html/halaleats/`

## 4. Configure

```bash
cp db_connect.example.php db_connect.php
nano db_connect.php
```

Set:
```php
$rsdomain = "https://reliablesoftwares.com/halaleats/";
$host     = "localhost";
$username = "reliscom_haluser";
$passwd   = "YOUR_PASSWORD";
$dbname   = "reliscom_halaleats";
```

## 5. Permissions

```bash
chmod 755 uploads/
chmod 644 db_connect.php
```

## 6. Run seed (once)

Edit `seed.php` → change `SEED_TOKEN` to a random string, e.g. `'xK9mP2qL7nR4'`

Visit:
```
https://reliablesoftwares.com/halaleats/seed.php?token=xK9mP2qL7nR4
```

Expect: "Seeded 8 sample restaurants. Done."

**Then delete seed.php** or leave token mismatched.

## 7. Verify

- Open `https://reliablesoftwares.com/halaleats/` → map loads, sample pins show
- Register new account → token saved
- Submit test restaurant → appears on map
- Verify + review → counters update
- Check `https://reliablesoftwares.com/halaleats/leaderboard.php` → your name listed

## 8. SSL

- cPanel → SSL/TLS Status → **AutoSSL** (Let's Encrypt) — should already cover subdir
- `.htaccess` already redirects HTTP → HTTPS within `/halaleats/`

## 9. Hardening checklist

- [x] `seed.php` token-gated
- [x] `.htaccess` blocks `.sql .md .env .example.php`
- [x] `db_connect.php` not in repo
- [ ] After seed: `rm seed.php` from server
- [ ] cPanel → set PHP `display_errors = Off`
- [ ] Cron: nightly `mysqldump reliscom_halaleats > backups/halaleats_$(date +%F).sql`

## 10. SEO basics (optional now, do later)

- Add `sitemap.php` listing all approved restaurants
- Add `robots.txt`:
  ```
  User-agent: *
  Allow: /halaleats/
  Sitemap: https://reliablesoftwares.com/halaleats/sitemap.php
  ```
- Submit to Google Search Console: property = `https://reliablesoftwares.com/halaleats/`

## 11. Update workflow (after launch)

```bash
ssh user@reliablesoftwares.com
cd public_html/halaleats
git pull origin main
# db_connect.php stays untouched (gitignored)
```

## Common issues

| Symptom | Cause | Fix |
|---------|-------|-----|
| 500 error | PHP < 8 | cPanel → MultiPHP → set 8.1+ |
| "Database unavailable" | Wrong creds in `db_connect.php` | Double-check user/pass/dbname |
| Map blank, no pins | Mixed content (http tiles on https) | Already uses https tiles — check console |
| Geolocation fails | Site on http | Force HTTPS via `.htaccess` (already set) |
| Photo upload fails | `uploads/` not writable | `chmod 755 uploads/` |
| Submit form 401 | Token expired | Logout + login again |

# HalalEats

Community-verified halal restaurant map. PHP + MySQL + Leaflet/OSM.

## Setup

1. Create MySQL DB. `cp db_connect.example.php db_connect.php`, edit creds.
2. Edit `seed.php` → set `SEED_TOKEN` to random string.
3. Visit `/seed.php?token=YOUR_TOKEN` once — creates tables + sample data, then delete file.
4. Open `/index.php`.

**Live deployment to `reliablesoftwares.com/halaleats/`** → see [DEPLOY.md](DEPLOY.md)

## Requirements

- **PHP 8.0+** (required, enforced at runtime)
- MySQL 5.7+ / MariaDB 10.3+
- ext-mysqli, ext-json, ext-mbstring, ext-fileinfo

## Stack

- Backend: PHP 8+ / MySQL
- Frontend: vanilla JS + Leaflet (free OpenStreetMap tiles)
- Auth: bcrypt + bearer token (no sessions, mobile-ready)

## Files

- `index.php` — map + list view
- `restaurant.php` — detail, reviews, verify, share
- `submit.php` — add new restaurant (auth)
- `login.php` / `register.php` — auth
- `favorites.php` — saved (auth)
- `leaderboard.php` — top contributors (viral hook)
- `apis/*.php` — JSON endpoints

## Viral hooks

- Trust score gamification (+5 add, +2 photo, +1 review/verify)
- Public leaderboard
- Per-restaurant share cards (WhatsApp/Twitter/FB)
- Community halal verification bar (yes/no votes)

## API endpoints (POST JSON, Bearer token where noted)

- `apis/register.php` `{account,password,name,city?,country?}` → `{user,token}`
- `apis/login.php` `{account,password}` → `{user,token}`
- `apis/restaurants.php` `{action:list, lat, lng, radius, q?, halal?, cuisine?}`
- `apis/restaurants.php` `{action:get, rid}`
- `apis/restaurants.php` `{action:add, name, lat, lng, halal_type, ...}` *(auth)*
- `apis/review.php` `{rid, rating, body}` *(auth)*
- `apis/verify.php` `{rid, vote:yes|no, note?}` *(auth)*
- `apis/favorite.php` `{rid}` toggle, or `{action:list}` *(auth)*
- `apis/photo.php` multipart `{rid, photo, caption?}` *(auth)*
- `apis/leaderboard.php` GET → top 100

## Next steps

- Wire `photo.php` UI in submit + restaurant pages
- PWA manifest for install-to-homescreen
- Push notifications via OneSignal
- Mobile wrapper (Flutter, like admonere) using same APIs

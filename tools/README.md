# HalalEats Data Tools

## 1. Seed famous Mumbai halal restaurants (instant, 30 records)

**Via phpMyAdmin:**
- cPanel → phpMyAdmin → DB `reliscom_halaleats`
- **Import** tab → upload `seed_mumbai.sql` → Go
- Or **SQL** tab → paste contents → Go

**Via SSH:**
```bash
mysql -u reliscom_halaleats -p reliscom_halaleats < tools/seed_mumbai.sql
```

Run once. No dedupe — re-running creates copies.

## 2. Live import from OpenStreetMap (Overpass API)

Pulls all restaurants tagged `diet:halal=yes/only/limited` in given city bbox.

**Requires:** `seed.token` file present (same one used for `seed.php`).

```
https://reliablesoftwares.com/halaleats/tools/import_overpass.php?token=YOUR_TOKEN&city=mumbai
```

**Cities supported:**
mumbai, delhi, hyderabad, bengaluru, dubai, abudhabi, london, istanbul, kl, singapore, jakarta, nyc, toronto, sydney

Auto-dedupes (same name + within 100m skipped).

**Output:**
```
Importing halal restaurants in Mumbai (IN)...
Overpass returned 142 elements.
  + Bademiya  (18.922, 72.832)  full
  + Persian Darbar  (18.961, 72.816)  full
  ...
--- Summary ---
Inserted:  87
Skipped (no name/coord/dup): 55
Errors:    0
Done.
```

**Notes:**
- Overpass API is free, public, rate-limited. Don't hammer.
- Coverage depends on OSM contributors — Mumbai/UAE/UK well-mapped, smaller cities sparse.
- Imported entries marked `status=approved`, `submitted_by=NULL`.

## 3. Adding more cities

Edit `import_overpass.php` `CITIES` constant. Format:
```php
'mycity' => ['CC', 'City Name', minLat, minLng, maxLat, maxLng],
```
Get bbox from https://boundingbox.klokantech.com/

## 4. Cleanup after seeding

```bash
rm tools/import_overpass.php tools/seed_mumbai.sql
```
Or leave behind `seed.token` removal (already covers access).

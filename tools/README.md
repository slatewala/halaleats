# HalalEats Data Tools

## Curated city seeds (instant, ~280 famous restaurants)

| File | City coverage | Count |
|------|--------------|-------|
| `seed_mumbai.sql` | Mumbai (60 restaurants — Bhendi Bazaar, Mohammed Ali Road, Bandra, Andheri, Kurla, Mumbra) | 60 |
| `seed_india.sql` | Delhi, Hyderabad, Bengaluru, Lucknow, Kolkata | 60 |
| `seed_uae.sql` | Dubai, Abu Dhabi, Sharjah | 36 |
| `seed_uk_eu.sql` | London, Birmingham, Manchester, Paris | 40 |
| `seed_namerica.sql` | NYC, NJ, Toronto, Chicago, Houston | 30 |
| `seed_asia.sql` | Istanbul, KL, Singapore, Jakarta, Karachi, Lahore, Doha | 60 |
| `seed_australia.sql` | Sydney, Melbourne, Cape Town, Johannesburg, Durban | 23 |

### Run all at once (recommended)

```
https://reliablesoftwares.com/halaleats/tools/seed_all.php?token=YOUR_SEED_TOKEN
```

Loops every `seed_*.sql` file in this dir. Token-gated.

### Run individual file via phpMyAdmin

- cPanel → phpMyAdmin → DB `reliscom_halaleats`
- **Import** tab → upload one `seed_*.sql` → Go
- Or **SQL** tab → paste contents → Go

### Run via SSH

```bash
mysql -u reliscom_halaleats -p reliscom_halaleats < tools/seed_mumbai.sql
mysql -u reliscom_halaleats -p reliscom_halaleats < tools/seed_india.sql
# ... etc
```

**Warning:** Re-running creates duplicates (no UNIQUE constraint). Run once per file.

## Live OpenStreetMap import (Overpass API)

Fetches all restaurants tagged `diet:halal=yes/only/limited` in given city bbox. Auto-dedupes.

```
https://reliablesoftwares.com/halaleats/tools/import_overpass.php?token=YOUR_TOKEN&city=mumbai
```

**Cities:** mumbai, delhi, hyderabad, bengaluru, dubai, abudhabi, london, istanbul, kl, singapore, jakarta, nyc, toronto, sydney

## Cleanup after seeding

```bash
rm tools/seed_all.php tools/import_overpass.php tools/seed_*.sql
rm seed.token
```

Or delete `seed.token` only — that breaks all token-gated tools without removing them.

## Adding more cities

Create `tools/seed_<city>.sql` with same INSERT pattern. Master loader picks it up automatically.

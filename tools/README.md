# HalalEats Data Tools

## Curated city seeds (instant, ~830 famous restaurants across 100+ cities)

### Wave 3 additions

| File | New cities |
|------|-----------|
| `seed_usa_extra2.sql` | Philadelphia, Miami, Phoenix, San Diego, Orlando, Denver, Portland, Tampa |
| `seed_europe_extra.sql` | Hamburg, Munich, Lyon, Marseille, Dublin, Edinburgh, Copenhagen, Oslo, Zurich, Lisbon, Athens |
| `seed_oceania_extra.sql` | Brisbane, Perth, Adelaide, Auckland, Wellington |
| `seed_gulf_extra.sql` | Dammam, Khobar, Al Ain, Ras Al Khaimah, Fujairah, Salalah, Abha, Taif |
| `seed_pakistan_extra.sql` | Islamabad, Rawalpindi, Multan, Peshawar, Sialkot, Faisalabad, Quetta |
| `seed_india_tier2.sql` | Patna, Kanpur, Indore, Nagpur, Surat, Mysore, Coimbatore, Mangalore, Vijayawada, Ranchi |
| `seed_se_asia_extra.sql` | Penang, Johor Bahru, Surabaya, Bandung, Yogyakarta, Phnom Penh, Yangon |
| `seed_africa_extra.sql` | Algiers, Khartoum, Dakar, Accra, Dar es Salaam, Mombasa, Kano, Abuja |
| `seed_latam.sql` | Mexico City, Sao Paulo, Buenos Aires, Bogota, Santiago |
| `dedupe.sql` | Cleanup script — preview/delete duplicates + recompute aggregates |

### All files

| File | City coverage | Count |
|------|--------------|-------|
| `seed_mumbai.sql` | Mumbai (60) | 60 |
| `seed_india.sql` | Delhi, Hyderabad, Bengaluru, Lucknow, Kolkata | 60 |
| `seed_india_extra.sql` | Aligarh, Aurangabad, Bhopal, Srinagar, Kochi, Kozhikode, Chennai, Pune, Ahmedabad, Jaipur, Varanasi | 38 |
| `seed_uae.sql` | Dubai, Abu Dhabi, Sharjah | 36 |
| `seed_middle_east.sql` | Riyadh, Jeddah, Mecca, Medina, Kuwait, Manama, Muscat, Amman, Beirut, Baghdad, Tehran | 50 |
| `seed_uk_eu.sql` | London, Birmingham, Manchester, Paris | 40 |
| `seed_uk_extra.sql` | Leicester, Bradford, Glasgow, Leeds, Cardiff, Liverpool | 22 |
| `seed_europe.sql` | Berlin, Frankfurt, Amsterdam, Brussels, Vienna, Stockholm, Madrid, Barcelona, Rome, Milan, Geneva, Moscow | 38 |
| `seed_namerica.sql` | NYC, NJ, Toronto, Chicago, Houston | 30 |
| `seed_usa_extra.sql` | LA, San Francisco, Detroit/Dearborn, DC, Boston, Atlanta, Dallas, Seattle, Minneapolis | 35 |
| `seed_asia.sql` | Istanbul, KL, Singapore, Jakarta, Karachi, Lahore, Doha | 60 |
| `seed_east_asia.sql` | Tokyo, Osaka, Kyoto, Seoul, Beijing, Shanghai, Xi'an, Bangkok, HCMC, Manila, Dhaka, Colombo | 47 |
| `seed_africa.sql` | Cairo, Alexandria, Casablanca, Marrakech, Fes, Tunis, Lagos, Nairobi, Addis Ababa | 36 |
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

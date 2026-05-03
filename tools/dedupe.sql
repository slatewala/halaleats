-- HalalEats — duplicate cleanup.
-- Run via phpMyAdmin SQL tab.
-- Safe order: SELECT first to preview, then DELETE, then aggregates refresh.

-- 1. PREVIEW — list all duplicates (same name + city)
SELECT name, city, COUNT(*) AS dups, MIN(rid) AS keep_rid, GROUP_CONCAT(rid) AS all_rids
FROM he_restaurants
GROUP BY name, city
HAVING dups > 1
ORDER BY dups DESC, name;

-- 2. DELETE — keeps row with lowest rid, removes the rest
DELETE r1 FROM he_restaurants r1
INNER JOIN he_restaurants r2
WHERE r1.rid > r2.rid
  AND r1.name = r2.name
  AND r1.city = r2.city;

-- 3. NEAR-DUPLICATES — same name within 100m (cross-city / spelling drift)
SELECT a.rid AS rid_a, a.name, a.city, a.lat, a.lng,
       b.rid AS rid_b, b.name AS name_b, b.city AS city_b,
       (6371 * acos(cos(radians(a.lat)) * cos(radians(b.lat)) * cos(radians(b.lng) - radians(a.lng)) + sin(radians(a.lat)) * sin(radians(b.lat)))) * 1000 AS dist_m
FROM he_restaurants a
JOIN he_restaurants b ON a.rid < b.rid AND a.name = b.name
WHERE (6371 * acos(cos(radians(a.lat)) * cos(radians(b.lat)) * cos(radians(b.lng) - radians(a.lng)) + sin(radians(a.lat)) * sin(radians(b.lat)))) * 1000 < 100
ORDER BY dist_m;

-- 4. RECOMPUTE aggregates (in case dedupe orphaned counts)
UPDATE he_restaurants r
SET avg_rating  = COALESCE((SELECT AVG(rating) FROM he_reviews WHERE rid=r.rid),0),
    rating_count = (SELECT COUNT(*) FROM he_reviews WHERE rid=r.rid),
    verify_yes  = (SELECT COUNT(*) FROM he_verifications WHERE rid=r.rid AND vote='yes'),
    verify_no   = (SELECT COUNT(*) FROM he_verifications WHERE rid=r.rid AND vote='no');

-- 5. PREVENT FUTURE DUPES — add unique constraint (optional)
-- Run only if step 1 returned 0 rows after dedupe:
-- ALTER TABLE he_restaurants ADD UNIQUE KEY uniq_name_city (name, city);

-- 6. FINAL COUNT
SELECT COUNT(*) AS total_restaurants FROM he_restaurants;
SELECT city, COUNT(*) AS n FROM he_restaurants GROUP BY city ORDER BY n DESC;

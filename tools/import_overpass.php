<?php
declare(strict_types=1);
// Import halal-tagged restaurants from OpenStreetMap Overpass API.
// Token-gated. Default city: Mumbai. Pass ?city=NAME to import others.
//
// Usage:
//   /tools/import_overpass.php?token=SEED_TOKEN[&city=mumbai|dubai|london|...]
//
// Cities supported (lat/lng bbox):

const CITIES = [
    'mumbai'   => ['IN', 'Mumbai',   18.85, 72.77, 19.30, 72.99],
    'delhi'    => ['IN', 'Delhi',    28.40, 76.84, 28.88, 77.35],
    'hyderabad'=> ['IN', 'Hyderabad',17.27, 78.24, 17.55, 78.66],
    'bengaluru'=> ['IN', 'Bengaluru',12.83, 77.45, 13.13, 77.75],
    'dubai'    => ['AE', 'Dubai',    24.95, 54.85, 25.40, 55.55],
    'abudhabi' => ['AE', 'Abu Dhabi',24.30, 54.30, 24.55, 54.70],
    'london'   => ['GB', 'London',   51.28, -0.51, 51.69, 0.33],
    'istanbul' => ['TR', 'Istanbul', 40.85, 28.60, 41.20, 29.40],
    'kl'       => ['MY', 'Kuala Lumpur', 3.04, 101.60, 3.25, 101.78],
    'singapore'=> ['SG', 'Singapore', 1.21, 103.60, 1.47, 104.05],
    'jakarta'  => ['ID', 'Jakarta',  -6.40, 106.70, -6.10, 106.97],
    'nyc'      => ['US', 'New York', 40.49, -74.26, 40.92, -73.70],
    'toronto'  => ['CA', 'Toronto',  43.58, -79.64, 43.86, -79.12],
    'sydney'   => ['AU', 'Sydney',  -34.12, 150.52, -33.57, 151.34],
];

$tokenFile = __DIR__ . '/../seed.token';
$SEED_TOKEN = is_readable($tokenFile) ? trim(file_get_contents($tokenFile)) : '';

if (PHP_SAPI !== 'cli') {
    if (!$SEED_TOKEN || ($_GET['token'] ?? '') !== $SEED_TOKEN) {
        http_response_code(403);
        exit("Forbidden. Need seed.token + ?token= match.");
    }
    header('Content-Type: text/plain');
}

require_once __DIR__ . '/../db_connect.php';

$cityKey = strtolower($_GET['city'] ?? $argv[1] ?? 'mumbai');
if (!isset(CITIES[$cityKey])) {
    echo "Unknown city '$cityKey'. Available: " . implode(', ', array_keys(CITIES)) . "\n";
    exit;
}

[$country, $cityName, $minLat, $minLng, $maxLat, $maxLng] = CITIES[$cityKey];
echo "Importing halal restaurants in $cityName ($country)...\n";
echo "BBox: $minLat,$minLng → $maxLat,$maxLng\n\n";

$query = <<<OVERPASS
[out:json][timeout:90];
(
  node["amenity"~"restaurant|fast_food|cafe"]["diet:halal"~"yes|only|limited"]($minLat,$minLng,$maxLat,$maxLng);
  way["amenity"~"restaurant|fast_food|cafe"]["diet:halal"~"yes|only|limited"]($minLat,$minLng,$maxLat,$maxLng);
);
out center tags;
OVERPASS;

$ch = curl_init('https://overpass-api.de/api/interpreter');
curl_setopt_array($ch, [
    CURLOPT_POST => true,
    CURLOPT_POSTFIELDS => 'data=' . urlencode($query),
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_TIMEOUT => 120,
    CURLOPT_USERAGENT => 'HalalEats/1.1 importer',
]);
$resp = curl_exec($ch);
$err = curl_error($ch);
$code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
curl_close($ch);

if ($err || $code !== 200) {
    echo "Overpass API error (HTTP $code): $err\n";
    echo "Response: " . substr((string)$resp, 0, 500) . "\n";
    exit(1);
}

$data = json_decode($resp, true);
if (!$data || !isset($data['elements'])) {
    echo "Bad Overpass response.\n";
    exit(1);
}

echo "Overpass returned " . count($data['elements']) . " elements.\n\n";

$ins = 0; $skip = 0; $err_count = 0;
$stmt = $conn->prepare("INSERT INTO he_restaurants (name,address,city,country,lat,lng,phone,website,cuisine,halal_type,certified,cert_body,veg_friendly,zabihah,price_level,submitted_by,status) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,NULL,'approved')");

foreach ($data['elements'] as $el) {
    $tags = $el['tags'] ?? [];
    $name = trim($tags['name'] ?? $tags['name:en'] ?? '');
    if (!$name) { $skip++; continue; }

    $lat = $el['lat'] ?? ($el['center']['lat'] ?? null);
    $lng = $el['lon'] ?? ($el['center']['lon'] ?? null);
    if ($lat === null || $lng === null) { $skip++; continue; }
    $lat = (float)$lat; $lng = (float)$lng;

    // Map diet:halal
    $halalTag = strtolower($tags['diet:halal'] ?? '');
    $halal = match ($halalTag) {
        'yes', 'only' => 'full',
        'limited' => 'partial',
        default => 'unknown',
    };

    // Build address
    $addrParts = array_filter([
        $tags['addr:housenumber'] ?? '',
        $tags['addr:street'] ?? '',
        $tags['addr:suburb'] ?? '',
    ]);
    $address = implode(' ', $addrParts) ?: ($tags['addr:full'] ?? '');
    $address = mb_substr($address, 0, 380);

    $cuisine = $tags['cuisine'] ?? '';
    $cuisine = str_replace(['_',';'], [' ',', '], $cuisine);
    $cuisine = mb_substr($cuisine, 0, 100);

    $phone = $tags['phone'] ?? $tags['contact:phone'] ?? '';
    $website = $tags['website'] ?? $tags['contact:website'] ?? '';

    $veg = (int)(($tags['diet:vegetarian'] ?? '') === 'yes');
    $cert = (int)(($tags['halal_certified'] ?? '') === 'yes');
    $zab = (int)(($tags['halal:zabihah'] ?? '') === 'yes');
    $cert_body = $tags['halal_certifier'] ?? '';
    $price = 0;

    // Dedupe: same name within 100m
    $dup = $conn->prepare("SELECT rid FROM he_restaurants WHERE name=? AND (6371 * acos(cos(radians($lat)) * cos(radians(lat)) * cos(radians(lng) - radians($lng)) + sin(radians($lat)) * sin(radians(lat)))) < 0.1 LIMIT 1");
    $dup->bind_param("s", $name);
    $dup->execute();
    if ($dup->get_result()->fetch_assoc()) { $skip++; continue; }

    $stmt->bind_param("ssssddssssisiii", $name, $address, $cityName, $country, $lat, $lng, $phone, $website, $cuisine, $halal, $cert, $cert_body, $veg, $zab, $price);
    if ($stmt->execute()) {
        $ins++;
        echo "  + $name  ($lat, $lng)  $halal\n";
    } else {
        $err_count++;
        echo "  ! FAILED $name :: " . $conn->error . "\n";
    }
}

echo "\n--- Summary ---\n";
echo "Inserted:  $ins\n";
echo "Skipped (no name/coord/dup): $skip\n";
echo "Errors:    $err_count\n";
echo "Done.\n";

<?php
declare(strict_types=1);
// Run once: php seed.php  (CLI) OR visit /seed.php?token=YOUR_TOKEN
// Token loaded from seed.token (gitignored). Generate via:
//   openssl rand -hex 24 > seed.token
// Delete seed.php after first run.

$tokenFile = __DIR__ . '/seed.token';
$SEED_TOKEN = is_readable($tokenFile) ? trim(file_get_contents($tokenFile)) : '';

if (PHP_SAPI !== 'cli') {
    if (!$SEED_TOKEN || ($_GET['token'] ?? '') !== $SEED_TOKEN) {
        http_response_code(403);
        exit("Forbidden. Create seed.token file with random secret and pass ?token=<secret>.");
    }
    header('Content-Type: text/plain');
}

require_once __DIR__ . '/db_connect.php';

// Tables
$sql = file_get_contents(__DIR__ . '/schema.sql');
foreach (array_filter(array_map('trim', explode(';', $sql))) as $stmt) {
    if (!$stmt) continue;
    if (!$conn->query($stmt)) echo "WARN: " . $conn->error . " :: " . substr($stmt,0,80) . "\n";
}

// Seed sample data if empty
$c = $conn->query("SELECT COUNT(*) c FROM he_restaurants")->fetch_assoc()['c'];
if ($c == 0) {
    $samples = [
        ['Al Ibrahimi','Tourist Club Area','Abu Dhabi','UAE',24.4894,54.3733,'Pakistani','full',1,'ESMA',0,1],
        ['Bait El Khetyar','Khalifa City','Abu Dhabi','UAE',24.4205,54.5832,'Emirati','full',0,'',1,1],
        ['Burgerheart','Al Wahda','Abu Dhabi','UAE',24.4731,54.3700,'Burger','full',0,'',0,0],
        ['Reem Al Bawadi','Marina','Dubai','UAE',25.0795,55.1399,'Lebanese','full',1,'Dubai Municipality',1,1],
        ['Pind Balluchi','Karama','Dubai','UAE',25.2510,55.3019,'Indian','full',0,'',1,1],
        ['Special Ottoman Cafe','Old Town','Istanbul','Turkey',41.0086,28.9802,'Turkish','full',0,'',0,1],
        ['Mughal-e-Azam','Whitechapel','London','UK',51.5174,-0.0598,'Mughlai','full',1,'HMC',1,1],
        ['Halal Guys','Midtown','New York','USA',40.7614,-73.9778,'Mediterranean','partial',0,'',0,0],
    ];
    foreach ($samples as $s) {
        $name=$s[0]; $addr=$s[1]; $city=$s[2]; $country=$s[3]; $lat=$s[4]; $lng=$s[5];
        $cui=$s[6]; $halal=$s[7]; $cert=(int)$s[8]; $cbody=$s[9]; $veg=(int)$s[10]; $zab=(int)$s[11];
        $st = $conn->prepare("INSERT INTO he_restaurants (name,address,city,country,lat,lng,cuisine,halal_type,certified,cert_body,veg_friendly,zabihah) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");
        $st->bind_param("ssssddssisii", $name,$addr,$city,$country,$lat,$lng,$cui,$halal,$cert,$cbody,$veg,$zab);
        $st->execute();
    }
    echo "Seeded " . count($samples) . " sample restaurants.\n";
} else {
    echo "Skipped seed — already $c restaurants.\n";
}
echo "Done.\n";

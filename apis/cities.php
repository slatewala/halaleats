<?php
declare(strict_types=1);
include_once "db_connect.php";
include_once "cors.php";
include_once "helpers.php";

$in = he_input();
$q = trim($in['q'] ?? '');
$limit = max(1, min(100, (int)($in['limit'] ?? 30)));

if ($q !== '') {
    $like = $q . '%';
    $like2 = '%' . $q . '%';
    $stmt = $conn->prepare("SELECT city, country, COUNT(*) AS n, AVG(lat) AS lat, AVG(lng) AS lng FROM he_restaurants WHERE status='approved' AND city != '' AND (city LIKE ? OR city LIKE ?) GROUP BY city, country ORDER BY (city LIKE ?) DESC, n DESC LIMIT ?");
    $stmt->bind_param("sssi", $like, $like2, $like, $limit);
    $stmt->execute();
    $rs = $stmt->get_result();
} else {
    $rs = $conn->query("SELECT city, country, COUNT(*) AS n, AVG(lat) AS lat, AVG(lng) AS lng FROM he_restaurants WHERE status='approved' AND city != '' GROUP BY city, country ORDER BY n DESC LIMIT $limit");
}

$rows = [];
while ($r = $rs->fetch_assoc()) {
    $rows[] = [
        'city' => $r['city'],
        'country' => $r['country'],
        'count' => (int)$r['n'],
        'lat' => (float)$r['lat'],
        'lng' => (float)$r['lng'],
    ];
}
he_json(["success"=>1, "cities"=>$rows]);

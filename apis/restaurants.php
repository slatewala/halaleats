<?php
declare(strict_types=1);
include_once "db_connect.php";
include_once "cors.php";
include_once "helpers.php";

$in = he_input();
$action = $in['action'] ?? 'list';

if ($action === 'list') {
    $lat = isset($in['lat']) ? (float)$in['lat'] : null;
    $lng = isset($in['lng']) ? (float)$in['lng'] : null;
    $radius = max(1, min(500, (float)($in['radius'] ?? 25)));
    $halal = $in['halal'] ?? '';
    $cuisine = trim($in['cuisine'] ?? '');
    $q = trim($in['q'] ?? '');
    $cityFilter = trim($in['city'] ?? '');
    $limit = max(1, min(500, (int)($in['limit'] ?? 100)));

    $where = ["status='approved'"];
    $params = []; $types = '';

    if ($halal && he_halal_valid($halal)) {
        $where[] = "halal_type=?"; $types .= 's'; $params[] = $halal;
    }
    if ($cuisine) {
        $where[] = "cuisine LIKE ?"; $types .= 's'; $params[] = "%$cuisine%";
    }
    if ($cityFilter) {
        $where[] = "city=?"; $types .= 's'; $params[] = $cityFilter;
    }
    if ($q) {
        $where[] = "(name LIKE ? OR address LIKE ? OR city LIKE ?)"; $types .= 'sss';
        $params[] = "%$q%"; $params[] = "%$q%"; $params[] = "%$q%";
    }

    $select = "rid, name, address, city, country, lat, lng, cuisine, halal_type, certified, cert_body, zabihah, veg_friendly, price_level, photo, avg_rating, rating_count, verify_yes, verify_no";
    $order = "rating_count DESC, avg_rating DESC";
    $distExpr = '';

    if ($lat !== null && $lng !== null) {
        $distExpr = ", " . he_haversine_sql($lat, $lng) . " AS distance_km";
        // city filter overrides radius restriction
        if (!$cityFilter) {
            $where[] = he_haversine_sql($lat, $lng) . " < $radius";
        }
        $order = "distance_km ASC";
    }

    $sql = "SELECT $select $distExpr FROM he_restaurants WHERE " . implode(' AND ', $where) . " ORDER BY $order LIMIT $limit";
    $stmt = $conn->prepare($sql);
    if ($params) $stmt->bind_param($types, ...$params);
    $stmt->execute();
    $res = $stmt->get_result();
    $rows = [];
    while ($r = $res->fetch_assoc()) $rows[] = $r;
    he_json(["success"=>1, "count"=>count($rows), "restaurants"=>$rows]);
}

if ($action === 'get') {
    $rid = (int)($in['rid'] ?? 0);
    if (!$rid) he_json(["success"=>0,"message"=>"rid required"], 400);
    $stmt = $conn->prepare("SELECT * FROM he_restaurants WHERE rid=? AND status='approved'");
    $stmt->bind_param("i", $rid);
    $stmt->execute();
    $r = $stmt->get_result()->fetch_assoc();
    if (!$r) he_json(["success"=>0,"message"=>"Not found"], 404);

    $reviews = [];
    $rs = $conn->prepare("SELECT r.reviewid, r.rating, r.body, r.created_at, u.name FROM he_reviews r JOIN he_users u ON u.userid=r.userid WHERE r.rid=? ORDER BY r.created_at DESC LIMIT 50");
    $rs->bind_param("i", $rid);
    $rs->execute();
    $rr = $rs->get_result();
    while ($row = $rr->fetch_assoc()) $reviews[] = $row;

    $photos = [];
    $ps = $conn->prepare("SELECT pid, url, caption FROM he_photos WHERE rid=? ORDER BY pid DESC LIMIT 20");
    $ps->bind_param("i", $rid);
    $ps->execute();
    $pr = $ps->get_result();
    while ($row = $pr->fetch_assoc()) $photos[] = $row;

    he_json(["success"=>1, "restaurant"=>$r, "reviews"=>$reviews, "photos"=>$photos]);
}

if ($action === 'add') {
    $user = he_auth_user($conn);
    if (!$user) he_json(["success"=>0,"message"=>"Login required"], 401);

    $name = trim($in['name'] ?? '');
    $address = trim($in['address'] ?? '');
    $city = trim($in['city'] ?? '');
    $country = trim($in['country'] ?? '');
    $lat = (float)($in['lat'] ?? 0);
    $lng = (float)($in['lng'] ?? 0);
    $phone = trim($in['phone'] ?? '');
    $website = trim($in['website'] ?? '');
    $cuisine = trim($in['cuisine'] ?? '');
    $halal = $in['halal_type'] ?? 'unknown';
    $certified = (int)!empty($in['certified']);
    $cert_body = trim($in['cert_body'] ?? '');
    $veg = (int)!empty($in['veg_friendly']);
    $zabihah = (int)!empty($in['zabihah']);
    $price = (int)($in['price_level'] ?? 0);

    if (!$name || !$lat || !$lng) he_json(["success"=>0,"message"=>"name, lat, lng required"], 400);
    if (!he_halal_valid($halal)) $halal = 'unknown';

    // dupe check: same name within 100m
    $dup = $conn->prepare("SELECT rid FROM he_restaurants WHERE name=? AND " . he_haversine_sql($lat,$lng) . " < 0.1 LIMIT 1");
    $dup->bind_param("s", $name);
    $dup->execute();
    if ($d = $dup->get_result()->fetch_assoc()) he_json(["success"=>0, "message"=>"Restaurant exists nearby", "rid"=>$d['rid']]);

    $uid = $user['userid'];
    $stmt = $conn->prepare("INSERT INTO he_restaurants (name,address,city,country,lat,lng,phone,website,cuisine,halal_type,certified,cert_body,veg_friendly,zabihah,price_level,submitted_by) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    $stmt->bind_param("ssssddssssisiiii", $name,$address,$city,$country,$lat,$lng,$phone,$website,$cuisine,$halal,$certified,$cert_body,$veg,$zabihah,$price,$uid);
    if (!$stmt->execute()) he_json(["success"=>0,"message"=>$conn->error], 500);
    $rid = $conn->insert_id;
    $conn->query("UPDATE he_users SET trust_score = trust_score + 5 WHERE userid=$uid");
    he_json(["success"=>1, "rid"=>$rid]);
}

he_json(["success"=>0,"message"=>"Unknown action"], 400);

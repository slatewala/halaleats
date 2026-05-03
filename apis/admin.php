<?php
declare(strict_types=1);
include_once "db_connect.php";
include_once "cors.php";
include_once "helpers.php";

$user = he_auth_user($conn);
if (!$user || (int)($user['is_admin'] ?? 0) !== 1) {
    he_json(["success"=>0,"message"=>"Admin only"], 403);
}

$in = he_input();
$action = $in['action'] ?? '';

switch ($action) {

case 'stats': {
    $stats = [];
    $stats['users']        = (int)$conn->query("SELECT COUNT(*) c FROM he_users")->fetch_assoc()['c'];
    $stats['admins']       = (int)$conn->query("SELECT COUNT(*) c FROM he_users WHERE is_admin=1")->fetch_assoc()['c'];
    $stats['banned']       = (int)$conn->query("SELECT COUNT(*) c FROM he_users WHERE banned=1")->fetch_assoc()['c'];
    $stats['restaurants']  = (int)$conn->query("SELECT COUNT(*) c FROM he_restaurants")->fetch_assoc()['c'];
    $stats['pending']      = (int)$conn->query("SELECT COUNT(*) c FROM he_restaurants WHERE status='pending'")->fetch_assoc()['c'];
    $stats['approved']     = (int)$conn->query("SELECT COUNT(*) c FROM he_restaurants WHERE status='approved'")->fetch_assoc()['c'];
    $stats['rejected']     = (int)$conn->query("SELECT COUNT(*) c FROM he_restaurants WHERE status='rejected'")->fetch_assoc()['c'];
    $stats['reviews']      = (int)$conn->query("SELECT COUNT(*) c FROM he_reviews")->fetch_assoc()['c'];
    $stats['verifications']= (int)$conn->query("SELECT COUNT(*) c FROM he_verifications")->fetch_assoc()['c'];
    $stats['photos']       = (int)$conn->query("SELECT COUNT(*) c FROM he_photos")->fetch_assoc()['c'];
    he_json(["success"=>1, "stats"=>$stats]);
}

case 'restaurants': {
    $status = $in['status'] ?? 'all';
    $where = "1=1";
    if (in_array($status, ['pending','approved','rejected'])) $where = "status='$status'";
    $rows = [];
    $rs = $conn->query("SELECT r.rid, r.name, r.city, r.country, r.halal_type, r.status, r.created_at, r.avg_rating, r.rating_count, u.account AS submitter FROM he_restaurants r LEFT JOIN he_users u ON u.userid=r.submitted_by WHERE $where ORDER BY r.created_at DESC LIMIT 500");
    while ($row = $rs->fetch_assoc()) $rows[] = $row;
    he_json(["success"=>1, "restaurants"=>$rows]);
}

case 'set_status': {
    $rid = (int)($in['rid'] ?? 0);
    $status = $in['status'] ?? '';
    if (!$rid || !in_array($status, ['pending','approved','rejected'])) he_json(["success"=>0,"message"=>"rid + status required"], 400);
    $stmt = $conn->prepare("UPDATE he_restaurants SET status=? WHERE rid=?");
    $stmt->bind_param("si", $status, $rid);
    $stmt->execute();
    he_json(["success"=>1, "affected"=>$stmt->affected_rows]);
}

case 'delete_restaurant': {
    $rid = (int)($in['rid'] ?? 0);
    if (!$rid) he_json(["success"=>0,"message"=>"rid required"], 400);
    $stmt = $conn->prepare("DELETE FROM he_restaurants WHERE rid=?");
    $stmt->bind_param("i", $rid);
    $stmt->execute();
    he_json(["success"=>1, "affected"=>$stmt->affected_rows]);
}

case 'edit_restaurant': {
    $rid = (int)($in['rid'] ?? 0);
    if (!$rid) he_json(["success"=>0,"message"=>"rid required"], 400);
    $fields = ['name','address','city','country','phone','website','cuisine','halal_type','cert_body'];
    $set = []; $vals = []; $types = '';
    foreach ($fields as $f) {
        if (isset($in[$f])) { $set[] = "$f=?"; $types .= 's'; $vals[] = (string)$in[$f]; }
    }
    foreach (['certified','zabihah','veg_friendly','price_level'] as $f) {
        if (isset($in[$f])) { $set[] = "$f=?"; $types .= 'i'; $vals[] = (int)$in[$f]; }
    }
    if (!$set) he_json(["success"=>0,"message"=>"Nothing to update"], 400);
    $vals[] = $rid; $types .= 'i';
    $sql = "UPDATE he_restaurants SET " . implode(',', $set) . " WHERE rid=?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param($types, ...$vals);
    $stmt->execute();
    he_json(["success"=>1, "affected"=>$stmt->affected_rows]);
}

case 'users': {
    $rows = [];
    $rs = $conn->query("SELECT userid, account, name, city, country, trust_score, is_admin, banned, created_at, last_login FROM he_users ORDER BY created_at DESC LIMIT 500");
    while ($row = $rs->fetch_assoc()) $rows[] = $row;
    he_json(["success"=>1, "users"=>$rows]);
}

case 'set_admin': {
    $uid = (int)($in['userid'] ?? 0);
    $val = (int)!empty($in['is_admin']);
    if (!$uid) he_json(["success"=>0,"message"=>"userid required"], 400);
    if ($uid === (int)$user['userid'] && $val === 0) he_json(["success"=>0,"message"=>"Cannot demote yourself"], 400);
    $stmt = $conn->prepare("UPDATE he_users SET is_admin=? WHERE userid=?");
    $stmt->bind_param("ii", $val, $uid);
    $stmt->execute();
    he_json(["success"=>1]);
}

case 'set_banned': {
    $uid = (int)($in['userid'] ?? 0);
    $val = (int)!empty($in['banned']);
    if (!$uid) he_json(["success"=>0,"message"=>"userid required"], 400);
    if ($uid === (int)$user['userid']) he_json(["success"=>0,"message"=>"Cannot ban yourself"], 400);
    $stmt = $conn->prepare("UPDATE he_users SET banned=? WHERE userid=?");
    $stmt->bind_param("ii", $val, $uid);
    $stmt->execute();
    he_json(["success"=>1]);
}

case 'reviews': {
    $rows = [];
    $rs = $conn->query("SELECT r.reviewid, r.rid, r.rating, r.body, r.created_at, u.account, u.name, rest.name AS rest_name FROM he_reviews r JOIN he_users u ON u.userid=r.userid JOIN he_restaurants rest ON rest.rid=r.rid ORDER BY r.created_at DESC LIMIT 200");
    while ($row = $rs->fetch_assoc()) $rows[] = $row;
    he_json(["success"=>1, "reviews"=>$rows]);
}

case 'delete_review': {
    $reviewid = (int)($in['reviewid'] ?? 0);
    if (!$reviewid) he_json(["success"=>0,"message"=>"reviewid required"], 400);
    // get rid first to recompute
    $r = $conn->prepare("SELECT rid FROM he_reviews WHERE reviewid=?");
    $r->bind_param("i", $reviewid); $r->execute();
    $row = $r->get_result()->fetch_assoc();
    if (!$row) he_json(["success"=>0,"message"=>"Not found"], 404);
    $rid = (int)$row['rid'];
    $conn->query("DELETE FROM he_reviews WHERE reviewid=$reviewid");
    $conn->query("UPDATE he_restaurants SET avg_rating = COALESCE((SELECT AVG(rating) FROM he_reviews WHERE rid=$rid),0), rating_count = (SELECT COUNT(*) FROM he_reviews WHERE rid=$rid) WHERE rid=$rid");
    he_json(["success"=>1]);
}

default:
    he_json(["success"=>0,"message"=>"Unknown action"], 400);
}

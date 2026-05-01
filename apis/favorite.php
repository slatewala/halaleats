<?php
declare(strict_types=1);
include_once "db_connect.php";
include_once "cors.php";
include_once "helpers.php";

$user = he_auth_user($conn);
if (!$user) he_json(["success"=>0,"message"=>"Login required"], 401);

$in = he_input();
$rid = (int)($in['rid'] ?? 0);
$action = $in['action'] ?? 'toggle';
$uid = $user['userid'];

if ($action === 'list') {
    $stmt = $conn->prepare("SELECT r.* FROM he_favorites f JOIN he_restaurants r ON r.rid=f.rid WHERE f.userid=? ORDER BY f.created_at DESC");
    $stmt->bind_param("i", $uid);
    $stmt->execute();
    $rs = $stmt->get_result();
    $rows = [];
    while ($r = $rs->fetch_assoc()) $rows[] = $r;
    he_json(["success"=>1, "favorites"=>$rows]);
}

if (!$rid) he_json(["success"=>0,"message"=>"rid required"], 400);

$chk = $conn->prepare("SELECT 1 FROM he_favorites WHERE userid=? AND rid=?");
$chk->bind_param("ii", $uid, $rid);
$chk->execute();
$exists = $chk->get_result()->fetch_assoc();

if ($exists) {
    $del = $conn->prepare("DELETE FROM he_favorites WHERE userid=? AND rid=?");
    $del->bind_param("ii", $uid, $rid);
    $del->execute();
    he_json(["success"=>1, "favorited"=>0]);
} else {
    $ins = $conn->prepare("INSERT INTO he_favorites (userid, rid) VALUES (?,?)");
    $ins->bind_param("ii", $uid, $rid);
    $ins->execute();
    he_json(["success"=>1, "favorited"=>1]);
}

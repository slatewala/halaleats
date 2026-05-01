<?php
declare(strict_types=1);
include_once "db_connect.php";
include_once "cors.php";
include_once "helpers.php";

$user = he_auth_user($conn);
if (!$user) he_json(["success"=>0,"message"=>"Login required"], 401);

$in = he_input();
$rid = (int)($in['rid'] ?? 0);
$vote = $in['vote'] ?? '';
$note = trim($in['note'] ?? '');

if (!$rid || !in_array($vote, ['yes','no'])) he_json(["success"=>0,"message"=>"rid + vote(yes|no) required"], 400);

$uid = $user['userid'];
$stmt = $conn->prepare("INSERT INTO he_verifications (rid, userid, vote, note) VALUES (?,?,?,?) ON DUPLICATE KEY UPDATE vote=VALUES(vote), note=VALUES(note), created_at=NOW()");
$stmt->bind_param("iiss", $rid, $uid, $vote, $note);
if (!$stmt->execute()) he_json(["success"=>0,"message"=>$conn->error], 500);

$conn->query("UPDATE he_restaurants r SET verify_yes = (SELECT COUNT(*) FROM he_verifications WHERE rid=$rid AND vote='yes'), verify_no = (SELECT COUNT(*) FROM he_verifications WHERE rid=$rid AND vote='no') WHERE rid=$rid");
$conn->query("UPDATE he_users SET trust_score = trust_score + 1 WHERE userid=$uid");

he_json(["success"=>1]);

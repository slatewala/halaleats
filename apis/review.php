<?php
declare(strict_types=1);
include_once "db_connect.php";
include_once "cors.php";
include_once "helpers.php";

$user = he_auth_user($conn);
if (!$user) he_json(["success"=>0,"message"=>"Login required"], 401);

$in = he_input();
$rid = (int)($in['rid'] ?? 0);
$rating = (int)($in['rating'] ?? 0);
$body = trim($in['body'] ?? '');

if (!$rid || $rating < 1 || $rating > 5) he_json(["success"=>0,"message"=>"rid + rating 1-5 required"], 400);

$uid = $user['userid'];
$stmt = $conn->prepare("INSERT INTO he_reviews (rid, userid, rating, body) VALUES (?,?,?,?) ON DUPLICATE KEY UPDATE rating=VALUES(rating), body=VALUES(body), created_at=NOW()");
$stmt->bind_param("iiis", $rid, $uid, $rating, $body);
if (!$stmt->execute()) he_json(["success"=>0,"message"=>$conn->error], 500);

// recompute aggregates
$conn->query("UPDATE he_restaurants r SET avg_rating = (SELECT AVG(rating) FROM he_reviews WHERE rid=$rid), rating_count = (SELECT COUNT(*) FROM he_reviews WHERE rid=$rid) WHERE rid=$rid");
$conn->query("UPDATE he_users SET trust_score = trust_score + 1 WHERE userid=$uid");

he_json(["success"=>1]);

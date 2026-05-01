<?php
declare(strict_types=1);
include_once "db_connect.php";
include_once "cors.php";
include_once "helpers.php";

$in = he_input();
$account = trim($in['account'] ?? '');
$password = $in['password'] ?? '';
$name = trim($in['name'] ?? '');
$city = trim($in['city'] ?? '');
$country = trim($in['country'] ?? '');

if (!$account || !$password || !$name) he_json(["success"=>0,"message"=>"account, password, name required"], 400);
if (strlen($password) < 6) he_json(["success"=>0,"message"=>"Password too short"], 400);

$chk = $conn->prepare("SELECT userid FROM he_users WHERE account=?");
$chk->bind_param("s", $account);
$chk->execute();
if ($chk->get_result()->fetch_assoc()) he_json(["success"=>0,"message"=>"Account exists"]);

$hash = password_hash($password, PASSWORD_BCRYPT);
$stmt = $conn->prepare("INSERT INTO he_users (account, password, name, city, country) VALUES (?,?,?,?,?)");
$stmt->bind_param("sssss", $account, $hash, $name, $city, $country);
if (!$stmt->execute()) he_json(["success"=>0,"message"=>$conn->error], 500);

$uid = $conn->insert_id;
$user = ["userid"=>$uid, "account"=>$account, "name"=>$name, "password"=>$hash];
$token = he_make_token($user);
unset($user['password']);
he_json(["success"=>1, "user"=>$user, "token"=>$token]);

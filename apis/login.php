<?php
declare(strict_types=1);
include_once "db_connect.php";
include_once "cors.php";
include_once "helpers.php";

$in = he_input();
$account = trim($in['account'] ?? '');
$password = $in['password'] ?? '';
if (!$account || !$password) he_json(["success"=>0,"message"=>"account, password required"], 400);

$stmt = $conn->prepare("SELECT userid, account, name, password, city, country, trust_score FROM he_users WHERE account=?");
$stmt->bind_param("s", $account);
$stmt->execute();
$u = $stmt->get_result()->fetch_assoc();
if (!$u || !password_verify($password, $u['password'])) he_json(["success"=>0,"message"=>"Invalid credentials"], 401);

$conn->query("UPDATE he_users SET last_login=NOW() WHERE userid=".(int)$u['userid']);
$token = he_make_token($u);
unset($u['password']);
he_json(["success"=>1, "user"=>$u, "token"=>$token]);

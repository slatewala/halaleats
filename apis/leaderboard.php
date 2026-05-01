<?php
declare(strict_types=1);
include_once "db_connect.php";
include_once "cors.php";
include_once "helpers.php";

$res = $conn->query("SELECT userid, name, city, country, trust_score FROM he_users WHERE trust_score > 0 ORDER BY trust_score DESC LIMIT 100");
$rows = [];
while ($r = $res->fetch_assoc()) $rows[] = $r;
he_json(["success"=>1, "leaders"=>$rows]);

<?php
declare(strict_types=1);
include_once "db_connect.php";
include_once "cors.php";
include_once "helpers.php";

$user = he_auth_user($conn);
if (!$user) he_json(["success"=>0,"message"=>"Login required"], 401);

$rid = (int)($_POST['rid'] ?? 0);
$caption = trim($_POST['caption'] ?? '');
if (!$rid || empty($_FILES['photo'])) he_json(["success"=>0,"message"=>"rid + photo required"], 400);

$f = $_FILES['photo'];
if ($f['error'] !== UPLOAD_ERR_OK) he_json(["success"=>0,"message"=>"Upload failed"], 400);
if ($f['size'] > 5*1024*1024) he_json(["success"=>0,"message"=>"Max 5MB"], 400);

$mime = mime_content_type($f['tmp_name']);
$ext_map = ['image/jpeg'=>'jpg','image/png'=>'png','image/webp'=>'webp'];
if (!isset($ext_map[$mime])) he_json(["success"=>0,"message"=>"Only JPG/PNG/WEBP"], 400);

$dir = __DIR__ . '/../uploads';
if (!is_dir($dir)) mkdir($dir, 0755, true);
$fname = $rid.'_'.time().'_'.bin2hex(random_bytes(4)).'.'.$ext_map[$mime];
$dest = $dir . '/' . $fname;
if (!move_uploaded_file($f['tmp_name'], $dest)) he_json(["success"=>0,"message"=>"Save failed"], 500);

$url = 'uploads/'.$fname;
$uid = $user['userid'];
$stmt = $conn->prepare("INSERT INTO he_photos (rid, userid, url, caption) VALUES (?,?,?,?)");
$stmt->bind_param("iiss", $rid, $uid, $url, $caption);
$stmt->execute();
$pid = $conn->insert_id;

// set as cover if none
$conn->query("UPDATE he_restaurants SET photo='$url' WHERE rid=$rid AND (photo='' OR photo IS NULL)");
$conn->query("UPDATE he_users SET trust_score = trust_score + 2 WHERE userid=$uid");

he_json(["success"=>1, "pid"=>$pid, "url"=>$url]);

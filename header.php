<?php
declare(strict_types=1);

if (PHP_VERSION_ID < 80000) {
    http_response_code(500);
    exit("HalalEats requires PHP 8.0 or higher. Current: " . PHP_VERSION);
}

$page_title = $page_title ?? 'HalalEats — Find verified halal food near you';
$asset_v = '1.6.0';
?><!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title><?= htmlspecialchars($page_title) ?></title>
<meta name="description" content="HalalEats — community-verified halal restaurants on a global map. Find, rate, verify halal eats near you.">
<meta property="og:title" content="<?= htmlspecialchars($page_title) ?>">
<meta property="og:description" content="Find community-verified halal restaurants near you.">
<meta property="og:type" content="website">
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css">
<link rel="stylesheet" href="assets/css/style.css?v=<?= $asset_v ?>">
<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js" defer></script>
<script src="assets/js/app.v2.js?v=<?= $asset_v ?>" defer></script>
</head>
<body>
<header class="he-header">
  <a href="index.php" class="logo">Halal<span>Eats</span></a>
  <nav id="he-nav"></nav>
</header>

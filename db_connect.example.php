<?php
declare(strict_types=1);

if (PHP_VERSION_ID < 80000) {
    http_response_code(500);
    exit("HalalEats requires PHP 8.0 or higher. Current: " . PHP_VERSION);
}

$rsdomain = "http://www.halaleats.com/";
$host = "localhost";
$username = "root";
$passwd = "YOUR_PASSWORD_HERE";
$dbname = "halaleats";

mysqli_report(MYSQLI_REPORT_OFF);
$conn = @mysqli_connect($host, $username, $passwd, $dbname);
if (!$conn) {
    error_log("DB connection failed: " . mysqli_connect_error());
    http_response_code(500);
    exit("Database unavailable");
}
mysqli_set_charset($conn, "utf8mb4");

error_reporting(E_ERROR | E_WARNING | E_PARSE);
?>

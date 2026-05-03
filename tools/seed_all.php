<?php
declare(strict_types=1);
// One-shot loader: runs every seed_*.sql file in this dir.
// Token-gated. Delete after use.
//
// Usage:
//   https://your-site/halaleats/tools/seed_all.php?token=SEED_TOKEN

$tokenFile = __DIR__ . '/../seed.token';
$SEED_TOKEN = is_readable($tokenFile) ? trim(file_get_contents($tokenFile)) : '';

if (PHP_SAPI !== 'cli') {
    if (!$SEED_TOKEN || ($_GET['token'] ?? '') !== $SEED_TOKEN) {
        http_response_code(403);
        exit("Forbidden. Need seed.token + ?token= match.");
    }
    header('Content-Type: text/plain');
}

require_once __DIR__ . '/../db_connect.php';

$files = glob(__DIR__ . '/seed_*.sql');
sort($files);

echo "Loading " . count($files) . " seed files...\n\n";

$total_inserted = 0;
$total_failed = 0;

foreach ($files as $file) {
    $name = basename($file);
    echo "--- $name ---\n";
    $sql = file_get_contents($file);

    // Naive split — works since seed files have one statement per VALUES block.
    // Strip comments + split on ; at end of line followed by INSERT or end.
    $statements = [];
    $current = '';
    foreach (explode("\n", $sql) as $line) {
        if (preg_match('/^\s*--/', $line)) continue; // skip comment lines
        $current .= $line . "\n";
        if (preg_match('/;\s*$/', $line)) {
            $statements[] = trim($current);
            $current = '';
        }
    }
    if (trim($current)) $statements[] = trim($current);

    $inserted = 0; $failed = 0;
    foreach ($statements as $stmt) {
        if (!$stmt) continue;
        if (!$conn->query($stmt)) {
            $failed++;
            echo "  ! " . substr($conn->error, 0, 100) . "\n";
        } else {
            $inserted += $conn->affected_rows;
        }
    }
    echo "  Inserted: $inserted, Failed: $failed\n\n";
    $total_inserted += $inserted;
    $total_failed += $failed;
}

echo "=== TOTAL ===\n";
echo "Inserted: $total_inserted\n";
echo "Failed:   $total_failed\n";
echo "Done.\n";

<?php
declare(strict_types=1);
// One-shot migration: add admin/banned cols + promote a user to admin.
// Token-gated. Delete after use.
//
// Usage:
//   https://your-site/migrate_admin.php?token=TOKEN&promote=ACCOUNT_EMAIL

$tokenFile = __DIR__ . '/seed.token';
$SEED_TOKEN = is_readable($tokenFile) ? trim(file_get_contents($tokenFile)) : '';

if (PHP_SAPI !== 'cli') {
    if (!$SEED_TOKEN || ($_GET['token'] ?? '') !== $SEED_TOKEN) {
        http_response_code(403);
        exit("Forbidden. Need seed.token + ?token= match.");
    }
    header('Content-Type: text/plain');
}

require_once __DIR__ . '/db_connect.php';

// Add columns if missing (idempotent)
$cols = $conn->query("SHOW COLUMNS FROM he_users LIKE 'is_admin'")->fetch_assoc();
if (!$cols) {
    $conn->query("ALTER TABLE he_users ADD COLUMN is_admin TINYINT(1) DEFAULT 0");
    echo "Added is_admin column.\n";
} else echo "is_admin column exists.\n";

$cols = $conn->query("SHOW COLUMNS FROM he_users LIKE 'banned'")->fetch_assoc();
if (!$cols) {
    $conn->query("ALTER TABLE he_users ADD COLUMN banned TINYINT(1) DEFAULT 0");
    echo "Added banned column.\n";
} else echo "banned column exists.\n";

// Promote user
$promote = $_GET['promote'] ?? $argv[1] ?? '';
if ($promote) {
    $stmt = $conn->prepare("UPDATE he_users SET is_admin=1 WHERE account=?");
    $stmt->bind_param("s", $promote);
    $stmt->execute();
    if ($stmt->affected_rows > 0) echo "Promoted '$promote' to admin.\n";
    else echo "User '$promote' not found (register first, then re-run).\n";
} else {
    echo "No promote=EMAIL passed. Migration only.\n";
}
echo "Done.\n";

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

// List all users (for diagnosis)
echo "\n--- Registered users ---\n";
$rs = $conn->query("SELECT userid, account, name, is_admin, created_at FROM he_users ORDER BY userid");
$total = 0;
while ($row = $rs->fetch_assoc()) {
    $admin = (int)$row['is_admin'] === 1 ? ' [ADMIN]' : '';
    echo "  #{$row['userid']}  {$row['account']}  ({$row['name']}){$admin}  {$row['created_at']}\n";
    $total++;
}
echo "Total: $total user(s)\n\n";

// Promote user (case-insensitive)
$promote = $_GET['promote'] ?? $argv[1] ?? '';
if ($promote) {
    $promote = trim($promote);
    $stmt = $conn->prepare("SELECT userid, account, is_admin FROM he_users WHERE LOWER(account)=LOWER(?)");
    $stmt->bind_param("s", $promote);
    $stmt->execute();
    $u = $stmt->get_result()->fetch_assoc();
    if (!$u) {
        echo "User '$promote' not found. Check spelling against list above.\n";
    } else {
        $uid = (int)$u['userid'];
        $conn->query("UPDATE he_users SET is_admin=1 WHERE userid=$uid");
        $already = (int)$u['is_admin'] === 1 ? ' (was already admin)' : '';
        echo "Promoted '{$u['account']}' (userid=$uid) to admin.$already\n";
    }
} else {
    echo "No promote=EMAIL passed. Migration only.\n";
}
echo "Done.\n";

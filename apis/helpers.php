<?php
declare(strict_types=1);

function he_input(): array {
    $body = json_decode(file_get_contents('php://input') ?: '', true) ?: [];
    return array_merge($_GET ?? [], $_POST ?? [], is_array($body) ? $body : []);
}

function he_json(mixed $data, int $code = 200): never {
    http_response_code($code);
    header("Content-Type: application/json");
    echo json_encode($data, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
    exit;
}

function he_auth_user(mysqli $conn): ?array {
    $hdr = $_SERVER['HTTP_AUTHORIZATION'] ?? '';
    if (!preg_match('/Bearer\s+(\S+)/i', $hdr, $m)) return null;
    $raw = base64_decode($m[1], true);
    if (!$raw || !str_contains($raw, ':')) return null;
    [$uid, $hash] = explode(':', $raw, 2);
    $uid = (int)$uid;
    if ($uid <= 0) return null;

    $stmt = $conn->prepare("SELECT userid, account, name, password FROM he_users WHERE userid=?");
    $stmt->bind_param("i", $uid);
    $stmt->execute();
    $u = $stmt->get_result()->fetch_assoc();
    if (!$u) return null;

    $expect = substr(hash('sha256', $u['userid'] . '|' . $u['password']), 0, 32);
    if (!hash_equals($expect, $hash)) return null;
    unset($u['password']);
    return $u;
}

function he_make_token(array $user): string {
    $hash = substr(hash('sha256', $user['userid'] . '|' . $user['password']), 0, 32);
    return base64_encode($user['userid'] . ':' . $hash);
}

function he_haversine_sql(float $lat, float $lng): string {
    return "(6371 * acos(cos(radians($lat)) * cos(radians(lat)) * cos(radians(lng) - radians($lng)) + sin(radians($lat)) * sin(radians(lat))))";
}

function he_halal_valid(string $t): bool {
    return match ($t) {
        'full', 'partial', 'alcohol_served', 'none', 'unknown' => true,
        default => false,
    };
}

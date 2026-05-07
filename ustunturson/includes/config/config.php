<?php
// Veritabani baglantisi
// Yerel gelistirme: parolasiz root denenebilir; canlida config.local.php override eder.
$DB_HOST = 'localhost';
$DB_NAME = 'db_ustuntur';
$DB_USER = 'root';
$DB_PASS = '';

// Yerel/canli ortam ayrimi: ayni dizinde config.local.php varsa o gecerlidir
if (file_exists(__DIR__ . '/config.local.php')) {
    require __DIR__ . '/config.local.php';
}

try {
    $db = new PDO(
        "mysql:host=$DB_HOST;dbname=$DB_NAME;charset=utf8",
        $DB_USER,
        $DB_PASS,
        [PDO::ATTR_ERRMODE => PDO::ERRMODE_SILENT]
    );
    $rewurlbase = "/";
} catch (PDOException $e) {
    echo "DB baglanti hatasi: " . $e->getMessage();
    exit;
}

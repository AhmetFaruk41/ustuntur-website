<?php
// Dil secimi yapilmissa
if (!empty($_GET['language'])) {
    $_SESSION['dil'] = $_GET['language'];
    header("Location:index.php");
    exit;
}

// Varsayilan dili ayarla
if (empty($_SESSION['dil'])) {
    $sqldil = $db->prepare("SELECT * FROM dil WHERE varsayilan='1' ORDER BY id ASC LIMIT 1");
    $sqldil->execute();
    $dils = $sqldil->fetch(PDO::FETCH_ASSOC);
    $_SESSION['dil'] = $dils['kisa_ad'] ?? 'tr';
}
$dil = $_SESSION['dil'];

$lang_file = 'includes/lang/' . $dil . '.php';
if (file_exists($lang_file)) {
    include $lang_file;
}
?>
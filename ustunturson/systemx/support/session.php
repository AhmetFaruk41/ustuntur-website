<?php
ob_start();
session_start();
error_reporting(0);
ini_set('display_errors', '0');
header('Content-Type: text/html; charset=utf-8');
define("GUVENLIK", true);
include "../includes/config/config.php";
include "../includes/config/admin_language.php";
include "../includes/config/functions.php";
date_default_timezone_set('Europe/Istanbul');

// Ayar SQL
$settings = $db->prepare("SELECT * FROM ayarlar WHERE id='1'");
$settings->execute();
$ayar = $settings->fetch(PDO::FETCH_ASSOC) ?: [];

// Aktif dil
$dil_kod = $_SESSION['dil'] ?? 'tr';
$language_current = $db->prepare("SELECT * FROM dil WHERE kisa_ad = :kod");
$language_current->execute(['kod' => $dil_kod]);
$lang = $language_current->fetch(PDO::FETCH_ASSOC) ?: [];

// Odeme ayarlari
$odemesettings = $db->prepare("SELECT * FROM odeme_ayar WHERE id='1'");
$odemesettings->execute();
$odemeayar = $odemesettings->fetch(PDO::FETCH_ASSOC) ?: [];

// Admin oturum kontrolu
$admin_username = $_SESSION['admin_username'] ?? '';
$adminsorgusu = $db->prepare("SELECT * FROM yonetici WHERE user_adi = :user_adi");
$adminsorgusu->execute(['user_adi' => $admin_username]);
if ($adminsorgusu->rowCount() === 0) {
    header("Location:login.php");
    exit;
}
?>
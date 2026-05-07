<?php
ob_start();
session_start();
$_SESSION['session'] = session_id();
error_reporting(0);
ini_set('display_errors', '0');
header('Content-Type: text/html; charset=utf-8');
define("GUVENLIK", true);
date_default_timezone_set('Europe/Istanbul');
include "includes/config/config.php";
include "includes/config/language.php";
include "includes/config/functions.php";
include "includes/config/hit.php";
total_online();

// Ayar SQL'leri (parametre yok; execute() ile cagrilir)
$settings = $db->prepare("SELECT * FROM ayarlar WHERE id='1'");
$settings->execute();
$ayar = $settings->fetch(PDO::FETCH_ASSOC) ?: [];
$siteurl  = $ayar['site_url']    ?? '';
$site_adi = $ayar['site_baslik'] ?? '';

$odemesettings = $db->prepare("SELECT * FROM odeme_ayar WHERE id='1'");
$odemesettings->execute();
$odemeayar = $odemesettings->fetch(PDO::FETCH_ASSOC) ?: [];

$smssettings = $db->prepare("SELECT * FROM sms WHERE id='1'");
$smssettings->execute();
$smsayar = $smssettings->fetch(PDO::FETCH_ASSOC) ?: [];

$BakimDurum = $db->prepare("SELECT * FROM bakim WHERE id='1' AND durum='1' ORDER BY id");
$BakimDurum->execute();
$bakim = $BakimDurum->fetch(PDO::FETCH_ASSOC) ?: ['durum' => 0];
?>

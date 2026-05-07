-- MySQL dump 10.13  Distrib 9.6.0, for macos26.3 (arm64)
--
-- Host: localhost    Database: db_ustun
-- ------------------------------------------------------
-- Server version	9.6.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
--
-- Table structure for table `about_ayar`
--

DROP TABLE IF EXISTS `about_ayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `about_ayar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `back_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baslik_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spot_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_bg` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `divider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_weight` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `padding` int NOT NULL DEFAULT '0',
  `tags` text COLLATE utf8mb4_unicode_ci,
  `text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_ayar`
--

LOCK TABLES `about_ayar` WRITE;
/*!40000 ALTER TABLE `about_ayar` DISABLE KEYS */;
INSERT INTO `about_ayar` VALUES (1,'ffffff','1e293b','64748b','3a3296','3a3296','700','Üstün Tur hakkımızda',60,'üstün tur, taşımacılık','64748b',0);
/*!40000 ALTER TABLE `about_ayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `about_page`
--

DROP TABLE IF EXISTS `about_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `about_page` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beceri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_bgcolor` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_textcolor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `galeri_id` int NOT NULL DEFAULT '0',
  `icerik` text COLLATE utf8mb4_unicode_ci,
  `seo_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spot` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_page`
--

LOCK TABLES `about_page` WRITE;
/*!40000 ALTER TABLE `about_page` DISABLE KEYS */;
INSERT INTO `about_page` VALUES (1,'Üstün Tur Hakkımızda','0','1','d4af37','ffffff','tr',0,'<p>Üstün Tur olarak yıllardır kurumsal ve bireysel müşterilerimize güvenli, konforlu ve zamanında ulaşım hizmeti sunuyoruz.</p>','hakkimizda','Profesyonel servis taşımacılığında lider');
/*!40000 ALTER TABLE `about_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayarlar`
--

DROP TABLE IF EXISTS `ayarlar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayarlar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `adres_bilgisi` text COLLATE utf8mb4_unicode_ci,
  `analytics_code` text COLLATE utf8mb4_unicode_ci,
  `canli_destek_kodu` text COLLATE utf8mb4_unicode_ci,
  `copyright_1` text COLLATE utf8mb4_unicode_ci,
  `copyright_2` text COLLATE utf8mb4_unicode_ci,
  `dots_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_bg_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_captcha` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_footer_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_gsm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_mail` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_maps_kodu` text COLLATE utf8mb4_unicode_ci,
  `site_mobil_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_slogan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_workhour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_bildirim_mail` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_durum` int NOT NULL DEFAULT '0',
  `smtp_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_mail` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_pass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_protokol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticaret_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticaret_text_home` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticaret_text_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticaret_text_sepet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticaret_text_urun` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totop` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totop_bg` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totop_bottom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totop_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yandex_code` text COLLATE utf8mb4_unicode_ci,
  `eski_favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticaret_text_back` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticaret_text_border` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayarlar`
--

LOCK TABLES `ayarlar` WRITE;
/*!40000 ALTER TABLE `ayarlar` DISABLE KEYS */;
INSERT INTO `ayarlar` VALUES (1,'Yenişehir, Demokrasi Cd. No:27 Kat:4 Daire:10, 41050 İzmit/Kocaeli','','','Üstün Tur Turizm Taşımacılık Ltd. Şti.','Tüm hakları saklıdır © 2026','3a3296','Üstün Tur - Profesyonel Servis Taşımacılığı','ffffff','0','20 yıllık tecrübemizle İstanbul ve çevresinde personel, öğrenci, VIP transfer ve tur taşımacılığı hizmetleri sunuyoruz.','icons/favicon.ico','ustuntur-logo.png','0542 304 64 77','ustuntur-logo.png','info@ustuntur.com.tr','<iframe src=\"https://maps.google.com/maps?q=%C3%9Cst%C3%BCntur+Turizm+Demokrasi+Caddesi+%C4%B0zmit&hl=tr&z=16&output=embed\" width=\"100%\" height=\"460\" style=\"border:0;\" allowfullscreen loading=\"lazy\"></iframe>','ustuntur-logo.png','Güvenli ve Konforlu Yolculuğun Adresi','üstün tur, servis taşımacılığı, personel servisi, öğrenci servisi, vip transfer, istanbul servis, tur firması','(0262) 324 40 93','http://localhost:8765/','905423046477','Pzt - Cmt: 08:00 - 19:00','admin@ustuntur.com.tr',0,'smtp.gmail.com','','','587','tls','1e293b','Anasayfa','fa-shopping-cart','Talep','Filo','1','3a3296','30','ffffff','',NULL,'f5f7fb','e5e7eb');
/*!40000 ALTER TABLE `ayarlar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bakim`
--

DROP TABLE IF EXISTS `bakim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bakim` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `iletisim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_durum` int NOT NULL DEFAULT '0',
  `spot` text COLLATE utf8mb4_unicode_ci,
  `text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bakim`
--

LOCK TABLES `bakim` WRITE;
/*!40000 ALTER TABLE `bakim` DISABLE KEYS */;
INSERT INTO `bakim` VALUES (1,'Bakım Modu','1e2a4a',0,'iletisim','',0,'Site geçici olarak bakımda.','ffffff');
/*!40000 ALTER TABLE `bakim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banka`
--

DROP TABLE IF EXISTS `banka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banka` (
  `id` int NOT NULL AUTO_INCREMENT,
  `banka_adi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `gorsel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hesap_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hesap_sahibi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sira` int NOT NULL DEFAULT '0',
  `sube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banka`
--

LOCK TABLES `banka` WRITE;
/*!40000 ALTER TABLE `banka` DISABLE KEYS */;
INSERT INTO `banka` VALUES (9,'Ziraat Bankası',1,'banka/ziraat.png','12345678-5001','Üstün Tur Turizm Taşımacılık Ltd. Şti.','TR12 0001 0000 0000 1234 5678 90',1,NULL),(10,'Garanti BBVA',1,'banka/garanti.png','6298765-001','Üstün Tur Turizm Taşımacılık Ltd. Şti.','TR98 0006 2000 0000 0006 2987 65',2,NULL),(11,'İş Bankası',1,'banka/isbank.png','1056-098765','Üstün Tur Turizm Taşımacılık Ltd. Şti.','TR23 0006 4000 0011 0560 9876 50',3,NULL),(12,'Yapı Kredi',1,'banka/yapikredi.png','57-3456789','Üstün Tur Turizm Taşımacılık Ltd. Şti.','TR45 0006 7010 0000 0057 3456 78',4,NULL);
/*!40000 ALTER TABLE `banka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beceri`
--

DROP TABLE IF EXISTS `beceri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beceri` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `oran` int NOT NULL DEFAULT '0',
  `sira` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beceri`
--

LOCK TABLES `beceri` WRITE;
/*!40000 ALTER TABLE `beceri` DISABLE KEYS */;
INSERT INTO `beceri` VALUES (1,'Müşteri Memnuniyeti','tr',1,98,1),(2,'Zamanında Ulaşım','tr',1,99,2),(3,'Güvenlik','tr',1,100,3),(4,'Konfor','tr',1,95,4);
/*!40000 ALTER TABLE `beceri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beceri_ayar`
--

DROP TABLE IF EXISTS `beceri_ayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beceri_ayar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `back_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baslik_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spot_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bar_bg` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bar_sub_bg` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bar_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `divider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_weight` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `padding` int NOT NULL DEFAULT '0',
  `tags` text COLLATE utf8mb4_unicode_ci,
  `width` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beceri_ayar`
--

LOCK TABLES `beceri_ayar` WRITE;
/*!40000 ALTER TABLE `beceri_ayar` DISABLE KEYS */;
INSERT INTO `beceri_ayar` VALUES (1,'ffffff','1e293b','64748b','3a3296','e5e7eb','ffffff','3a3296','600',NULL,60,NULL,0);
/*!40000 ALTER TABLE `beceri_ayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `belge`
--

DROP TABLE IF EXISTS `belge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `belge` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `gorsel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sira` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `belge`
--

LOCK TABLES `belge` WRITE;
/*!40000 ALTER TABLE `belge` DISABLE KEYS */;
INSERT INTO `belge` VALUES (13,'ISO 9001:2015 Kalite Yönetim',1,'',1),(14,'ISO 14001:2015 Çevre Yönetim',1,'',2),(15,'TÜRSAB A Grubu İşletme Belgesi',1,'',3),(16,'Bakanlık Yetki Belgesi (D2)',1,'',4),(17,'TSE Hizmet Yeterlilik Belgesi',1,'',5),(18,'İSG Belgesi',1,'',6);
/*!40000 ALTER TABLE `belge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `belge_ayar`
--

DROP TABLE IF EXISTS `belge_ayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `belge_ayar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `back_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baslik_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spot_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `divider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_weight` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `padding` int NOT NULL DEFAULT '0',
  `width` int NOT NULL DEFAULT '0',
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `belge_ayar`
--

LOCK TABLES `belge_ayar` WRITE;
/*!40000 ALTER TABLE `belge_ayar` DISABLE KEYS */;
INSERT INTO `belge_ayar` VALUES (1,'f5f7fb','1e293b','64748b','3a3296','600',60,0,'Belgelerimiz ve sertifikalarımız','belge, sertifika');
/*!40000 ALTER TABLE `belge_ayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `anasayfa` int NOT NULL DEFAULT '0',
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `gorsel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int NOT NULL DEFAULT '0',
  `icerik` text COLLATE utf8mb4_unicode_ci,
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `spot` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `seo_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tarih` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_ayar`
--

DROP TABLE IF EXISTS `blog_ayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_ayar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `back_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baslik_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spot_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `box_bg_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `box_header_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `box_more_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `box_spot_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `divider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_weight` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `padding` int NOT NULL DEFAULT '0',
  `blog_limit` int NOT NULL DEFAULT '0',
  `border_radius` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` int NOT NULL DEFAULT '0',
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_ayar`
--

LOCK TABLES `blog_ayar` WRITE;
/*!40000 ALTER TABLE `blog_ayar` DISABLE KEYS */;
INSERT INTO `blog_ayar` VALUES (1,'f5f7fb',NULL,NULL,'ffffff','1e293b','3a3296','64748b','3a3296','600',60,6,'8',0,'Servis taşımacılığı haberleri ve güncel yazılarımız','blog, servis, haber, makale');
/*!40000 ALTER TABLE `blog_ayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cerez_ayar`
--

DROP TABLE IF EXISTS `cerez_ayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cerez_ayar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bg_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_bg` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` text COLLATE utf8mb4_unicode_ci,
  `button_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` text COLLATE utf8mb4_unicode_ci,
  `spot` text COLLATE utf8mb4_unicode_ci,
  `width` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cerez_ayar`
--

LOCK TABLES `cerez_ayar` WRITE;
/*!40000 ALTER TABLE `cerez_ayar` DISABLE KEYS */;
INSERT INTO `cerez_ayar` VALUES (1,'1e2a4a','ffffff','3a3296','Tamam','ffffff','tr',0,'','','Sitemiz çerez kullanır.',0);
/*!40000 ALTER TABLE `cerez_ayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dil`
--

DROP TABLE IF EXISTS `dil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dil` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icerik` text COLLATE utf8mb4_unicode_ci,
  `kisa_ad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sira` int NOT NULL DEFAULT '0',
  `varsayilan` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dil`
--

LOCK TABLES `dil` WRITE;
/*!40000 ALTER TABLE `dil` DISABLE KEYS */;
INSERT INTO `dil` VALUES (1,'Türkçe','tr.png','Türkçe içerik','tr',1,1);
/*!40000 ALTER TABLE `dil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ebulten`
--

DROP TABLE IF EXISTS `ebulten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ebulten` (
  `id` int NOT NULL AUTO_INCREMENT,
  `eposta` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ebulten`
--

LOCK TABLES `ebulten` WRITE;
/*!40000 ALTER TABLE `ebulten` DISABLE KEYS */;
/*!40000 ALTER TABLE `ebulten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ebulten_ayar`
--

DROP TABLE IF EXISTS `ebulten_ayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ebulten_ayar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `back_bg` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `back_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baslik_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spot_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_bg_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_bg_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `padding` int NOT NULL DEFAULT '0',
  `tip` int NOT NULL DEFAULT '0',
  `width` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ebulten_ayar`
--

LOCK TABLES `ebulten_ayar` WRITE;
/*!40000 ALTER TABLE `ebulten_ayar` DISABLE KEYS */;
INSERT INTO `ebulten_ayar` VALUES (1,'footer','1e2a4a','5e54c1','ffffff',NULL,'3a3296','ffffff','ffffff',NULL,0,0,0);
/*!40000 ALTER TABLE `ebulten_ayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ekip`
--

DROP TABLE IF EXISTS `ekip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ekip` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `gorsel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pozisyon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sira` int NOT NULL DEFAULT '0',
  `tel` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ekip`
--

LOCK TABLES `ekip` WRITE;
/*!40000 ALTER TABLE `ekip` DISABLE KEYS */;
INSERT INTO `ekip` VALUES (13,'tr',1,'1187887268-21-0e4d31fc3fb996f92b7be88f3f418036.jpg','Mehmet Üstün','mehmet@ustuntur.com.tr','Yönetim Kurulu Başkanı',1,'0532 282 00 01'),(14,'tr',1,'4682444287464-922-936733960-799-assadsasda.png','Ayşe Üstün','ayse@ustuntur.com.tr','Genel Müdür',2,'0532 282 00 02'),(15,'tr',1,'5535880657844-385-820776883-930-0e4d31fc3fb996f92b7be88f3f418036.jpg','Hasan Demir','hasan@ustuntur.com.tr','Operasyon Müdürü',3,'0532 282 00 03'),(16,'tr',1,'820776883-930-0e4d31fc3fb996f92b7be88f3f418036.jpg','Fatma Yıldız','fatma@ustuntur.com.tr','İK ve Mali İşler Müd.',4,'0532 282 00 04'),(17,'tr',1,'936733960-799-assadsasda.png','Ahmet Çelik','ahmet@ustuntur.com.tr','Filo Yöneticisi',5,'0532 282 00 05'),(18,'tr',1,'1187887268-21-0e4d31fc3fb996f92b7be88f3f418036.jpg','Selin Kaya','selin@ustuntur.com.tr','Müşteri İlişkileri',6,'0532 282 00 06');
/*!40000 ALTER TABLE `ekip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ekip_ayar`
--

DROP TABLE IF EXISTS `ekip_ayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ekip_ayar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `back_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baslik_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spot_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `divider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_weight` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `padding` int NOT NULL DEFAULT '0',
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `width` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ekip_ayar`
--

LOCK TABLES `ekip_ayar` WRITE;
/*!40000 ALTER TABLE `ekip_ayar` DISABLE KEYS */;
INSERT INTO `ekip_ayar` VALUES (1,'ffffff','1e293b','64748b','3a3296','600',60,'Üstün Tur ekibimiz','ekip, takım',0);
/*!40000 ALTER TABLE `ekip_ayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ekip_sosyal`
--

DROP TABLE IF EXISTS `ekip_sosyal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ekip_sosyal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ekip_id` int NOT NULL DEFAULT '0',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sira` int NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ekip_sosyal`
--

LOCK TABLES `ekip_sosyal` WRITE;
/*!40000 ALTER TABLE `ekip_sosyal` DISABLE KEYS */;
/*!40000 ALTER TABLE `ekip_sosyal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footer_ayar`
--

DROP TABLE IF EXISTS `footer_ayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footer_ayar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gorsel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gorsel_onay` int NOT NULL DEFAULT '0',
  `tip` int NOT NULL DEFAULT '0',
  `width` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footer_ayar`
--

LOCK TABLES `footer_ayar` WRITE;
/*!40000 ALTER TABLE `footer_ayar` DISABLE KEYS */;
INSERT INTO `footer_ayar` VALUES (1,'',0,1,0);
/*!40000 ALTER TABLE `footer_ayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footer_menu`
--

DROP TABLE IF EXISTS `footer_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footer_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `sira` int NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footer_menu`
--

LOCK TABLES `footer_menu` WRITE;
/*!40000 ALTER TABLE `footer_menu` DISABLE KEYS */;
INSERT INTO `footer_menu` VALUES (46,'Hakkımızda','tr',1,1,'sayfa/hakkimizda','0'),(49,'Belgelerimiz','tr',1,4,'belgeler','0'),(50,'Ekibimiz','tr',1,5,'ekibimiz','0'),(51,'Personel Servisi','tr',1,1,'hizmet/1/personel-servis-tasimaciligi','1'),(52,'Öğrenci Servisi','tr',1,2,'hizmet/2/ogrenci-servis-tasimaciligi','1'),(53,'VIP Transfer','tr',1,3,'hizmet/3/vip-transfer','1'),(54,'Şehirler Arası Tur','tr',1,4,'hizmet/4/sehirler-arasi-tur','1'),(55,'Havalimanı Transfer','tr',1,5,'hizmet/5/havalimani-transfer','1'),(56,'İletişim','tr',1,1,'iletisim','2'),(57,'S.S.S.','tr',1,2,'sss','2'),(60,'İK Başvuru','tr',1,5,'insan-kaynaklari','2');
/*!40000 ALTER TABLE `footer_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galeri_ayar`
--

DROP TABLE IF EXISTS `galeri_ayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galeri_ayar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `back_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baslik_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spot_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `padding` int NOT NULL DEFAULT '0',
  `tags` text COLLATE utf8mb4_unicode_ci,
  `width` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeri_ayar`
--

LOCK TABLES `galeri_ayar` WRITE;
/*!40000 ALTER TABLE `galeri_ayar` DISABLE KEYS */;
INSERT INTO `galeri_ayar` VALUES (1,'ffffff',NULL,NULL,'Foto galerimiz',60,'galeri, fotoğraf',0);
/*!40000 ALTER TABLE `galeri_ayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galeri_kat`
--

DROP TABLE IF EXISTS `galeri_kat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galeri_kat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `anasayfa` int NOT NULL DEFAULT '0',
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `gorsel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `sira` int NOT NULL DEFAULT '0',
  `tags` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeri_kat`
--

LOCK TABLES `galeri_kat` WRITE;
/*!40000 ALTER TABLE `galeri_kat` DISABLE KEYS */;
INSERT INTO `galeri_kat` VALUES (9,1,'Filo Görüntüleri','tr',1,'','Filo araçlarımızdan görüntüler',1,'filo, araç'),(10,1,'Etkinliklerimiz','tr',1,'','Şirket etkinliklerimizden kareler',2,'etkinlik'),(11,1,'Personelimiz','tr',1,'','Şoför ve ofis ekibimiz',3,'personel, ekip'),(12,1,'Bakım Atölyesi','tr',1,'','Kendi atölyemizde araç bakımları',4,'bakım, atölye');
/*!40000 ALTER TABLE `galeri_kat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galeri_resim`
--

DROP TABLE IF EXISTS `galeri_resim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galeri_resim` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kat_id` int NOT NULL DEFAULT '0',
  `sira` int NOT NULL DEFAULT '0',
  `gorsel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeri_resim`
--

LOCK TABLES `galeri_resim` WRITE;
/*!40000 ALTER TABLE `galeri_resim` DISABLE KEYS */;
/*!40000 ALTER TABLE `galeri_resim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `header_ayar`
--

DROP TABLE IF EXISTS `header_ayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `header_ayar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `arama_button` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `back_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baslik_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spot_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dil_secim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `font` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_width` int NOT NULL DEFAULT '0',
  `mail` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mega_gorsel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `padding` int NOT NULL DEFAULT '0',
  `sosyal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topheader_width` int NOT NULL DEFAULT '0',
  `whatsapp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `border_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_bg` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_hover_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_text_hover_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobil_bar_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobil_bg` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel_2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_limit` int NOT NULL DEFAULT '8',
  `header_tip` int NOT NULL DEFAULT '1',
  `header_menu_bg` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_align` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_size` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_weight` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dil_border` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arama_button_bg` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arama_button_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header2_bottom_margin` int NOT NULL DEFAULT '0',
  `header2_cart_bg` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header2_menu_border` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header2_menu_height` int NOT NULL DEFAULT '60',
  `width` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `header_ayar`
--

LOCK TABLES `header_ayar` WRITE;
/*!40000 ALTER TABLE `header_ayar` DISABLE KEYS */;
INSERT INTO `header_ayar` VALUES (1,'0','ffffff',NULL,NULL,'0',1,'Open Sans',0,'1','',10,'1','1','1e293b',0,'1','e5e7eb','3a3296','ffffff','3a3296','1e293b','ffffff','3a3296','ffffff',NULL,8,1,'f5f7fb','center','14','500','e5e7eb','3a3296','ffffff',0,'3a3296','e5e7eb',60,0);
/*!40000 ALTER TABLE `header_ayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `header_menu`
--

DROP TABLE IF EXISTS `header_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `header_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `mega_durum` int NOT NULL DEFAULT '0',
  `sira` int NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ust_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `header_menu`
--

LOCK TABLES `header_menu` WRITE;
/*!40000 ALTER TABLE `header_menu` DISABLE KEYS */;
INSERT INTO `header_menu` VALUES (1,'Anasayfa','tr',1,0,1,'#',0),(2,'Hakkımızda','tr',1,0,2,'sayfa/hakkimizda',0),(3,'Hizmetler','tr',1,0,3,'hizmetler',0),(5,'Galeri','tr',1,0,5,'foto-galeri',0),(7,'İletişim','tr',1,0,7,'iletisim',0);
/*!40000 ALTER TABLE `header_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hit`
--

DROP TABLE IF EXISTS `hit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ay` bigint DEFAULT '0',
  `gun` bigint DEFAULT '0',
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sayac` int NOT NULL DEFAULT '0',
  `simdi` bigint DEFAULT '0',
  `yil` bigint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hit`
--

LOCK TABLES `hit` WRITE;
/*!40000 ALTER TABLE `hit` DISABLE KEYS */;
INSERT INTO `hit` VALUES (1,5,5,'127.0.0.1',951,0,2026);
/*!40000 ALTER TABLE `hit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hizmet`
--

DROP TABLE IF EXISTS `hizmet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hizmet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `anasayfa` int NOT NULL DEFAULT '0',
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `gorsel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icerik` text COLLATE utf8mb4_unicode_ci,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `sira` int NOT NULL DEFAULT '0',
  `spot` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `seo_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hizmet`
--

LOCK TABLES `hizmet` WRITE;
/*!40000 ALTER TABLE `hizmet` DISABLE KEYS */;
INSERT INTO `hizmet` VALUES (1,1,'Personel Servis Taşımacılığı','tr',1,'4458852408997-260-ustuntur.jpg','<h3>Kurumsal Personel Servis Hizmeti</h3><p>Üstün Tur olarak 20 yıllık deneyimimizle İstanbul\'un dört bir yanında kurumsal personel servis taşımacılığı hizmeti sunmaktayız. Türkiye\'nin önde gelen 100\'den fazla şirketinin tercihi olan firmamız, modern filosu ve profesyonel ekibiyle güvenli ve konforlu yolculuk sağlamaktadır.</p><h4>Avantajlarımız</h4><ul><li>Şirketinize özel rota planlaması</li><li>GPS takip sistemli araçlar</li><li>SRC belgesine sahip eğitimli şoförler</li><li>Periyodik bakımlı ve sigortalı araç filosu</li><li>7/24 operasyon desteği</li><li>Sefer sonrası raporlama</li></ul><p>Personel servis taşımacılığında kalite ve güvenliği bir arada sunan Üstün Tur, kurumsal müşterilerine özel çözümler üretmektedir.</p>','flaticon-bus','Personel Servis Taşımacılığı - Kurumsal şirketlere özel personel servis çözümleri ile çalışanlarınızı işyerlerine güvenli ve konforlu şekilde taşıyoruz.',1,'Kurumsal şirketlere özel personel servis çözümleri ile çalışanlarınızı işyerlerine güvenli ve konforlu şekilde taşıyoruz.','personel, servis, taşımacılığı, taşımacılık','personel-servis-tasimaciligi'),(2,1,'Öğrenci Servis Taşımacılığı','tr',1,'1842528315978-952-ogrenci-920.jpg','<h3>Güvenli Öğrenci Servisi</h3><p>Çocuklarınızın güvenliği bizim önceliğimizdir. Üstün Tur okul servis araçlarımız UKOME yönetmeliklerine tam uyumlu, yangın söndürme tüpü, ilk yardım çantası ve güvenlik kamerası ile donatılmıştır. Her aracımızda eğitimli rehber bulunmaktadır.</p><h4>Öğrenci Servisinde Sunduklarımız</h4><ul><li>UKOME onaylı sarı renk araçlar</li><li>3 yaş altı bakımlı okul servisi araçları</li><li>Eğitimli kadın rehber öğretmen</li><li>Anlık konum bildirim SMS\'leri</li><li>Veli bilgilendirme uygulaması</li><li>Çift kemer sistemi</li></ul>','flaticon-school-bus','Öğrenci Servis Taşımacılığı - Çocuklarınızın okula güvenli ve zamanında ulaşımı için modern, güvenli okul servisleri.',2,'Çocuklarınızın okula güvenli ve zamanında ulaşımı için modern, güvenli okul servisleri.','öğrenci, servis, taşımacılığı, taşımacılık','ogrenci-servis-tasimaciligi'),(3,1,'VIP Transfer','tr',1,'2803913603999-903-turizm-tasimacilik-araba-696x408.jpg','<h3>VIP Transfer Hizmeti</h3><p>Önemli misafirleriniz, yöneticileriniz ve özel günleriniz için VIP transfer hizmeti sunuyoruz. Premium segment Mercedes Vito, S-Class ve E-Class araçlarımızla havalimanı transferleri, şehirler arası seyahatler ve özel etkinlik transferlerinde hizmetinizdeyiz.</p><h4>VIP Hizmet Standartlarımız</h4><ul><li>Mercedes-Benz Vito, S-Class ve E-Class</li><li>Takım elbiseli profesyonel şoförler</li><li>İkram servisi</li><li>WiFi ve şarj imkanı</li><li>Karşılama tabelası</li><li>Çok dilli şoför seçeneği</li></ul>','flaticon-car','VIP Transfer - Premium araçlarımız ve profesyonel ekibimizle VIP misafirleriniz için lüks transfer hizmeti.',3,'Premium araçlarımız ve profesyonel ekibimizle VIP misafirleriniz için lüks transfer hizmeti.','vip, transfer, taşımacılık','vip-transfer'),(4,1,'Şehirler Arası Tur','tr',1,'7525824246871-312-kongre-seminer.jpg','<h3>Tur ve Gezi Organizasyonları</h3><p>Şirket etkinlikleri, okul gezileri ve özel grup turlarınız için Türkiye\'nin dört bir yanına ulaşan tur taşımacılığı hizmetimizle kusursuz organizasyonlar gerçekleştiriyoruz. 16-46 kişilik kapasitelerde, full klimalı, monitörlü, USB şarjlı modern otobüslerimizle konforunuzdan ödün vermeyin.</p><h4>Tur Araçlarımız</h4><ul><li>16, 19, 27 kişilik minibüs</li><li>30, 36, 46 kişilik otobüs</li><li>VIP üst sınıf turistik otobüs</li><li>Tur rehberi koltuğu mevcut</li><li>Bagaj kapasitesi geniş</li></ul>','flaticon-globe','Şehirler Arası Tur - Yurtiçi tur ve şirket gezileri için modern, konforlu otobüs ve minibüs filomuzla yanınızdayız.',4,'Yurtiçi tur ve şirket gezileri için modern, konforlu otobüs ve minibüs filomuzla yanınızdayız.','şehirler, arası, tur, taşımacılık','sehirler-arasi-tur'),(5,1,'Havalimanı Transfer','tr',1,'2803913603999-903-turizm-tasimacilik-araba-696x408.jpg','<h3>Havalimanı Transfer</h3><p>İstanbul Havalimanı, Sabiha Gökçen ve Atatürk Havalimanı transferlerinizde 24 saat hizmetinizdeyiz. Uçuş takibi yapıp gecikmelerde bekleme süresi 30 dakikaya kadar ücretsizdir.</p><h4>Detaylar</h4><ul><li>İstanbul Havalimanı transferi</li><li>Sabiha Gökçen transferi</li><li>Online rezervasyon</li><li>Uçuş takibi</li><li>Sabit fiyat garantisi</li></ul>','flaticon-airport','Havalimanı Transfer - İstanbul\'un tüm havalimanlarına 24 saat sabit fiyatlı transfer hizmeti.',5,'İstanbul\'un tüm havalimanlarına 24 saat sabit fiyatlı transfer hizmeti.','havalimanı, transfer, taşımacılık','havalimani-transfer'),(6,1,'Düğün ve Özel Gün Araç Kiralama','tr',1,'4458852408997-260-ustuntur.jpg','<h3>Özel Gün Araç Kiralama</h3><p>Düğün, nişan, kına gecesi ve diğer özel günleriniz için süslemeli araç kiralama hizmetimiz mevcuttur. Misafirleriniz için minibüs ve otobüs takviyesi de sağlamaktayız.</p>','flaticon-heart','Düğün ve Özel Gün Araç Kiralama - Düğün, nişan ve özel günleriniz için süslemeli araç ve misafir minibüsü.',6,'Düğün, nişan ve özel günleriniz için süslemeli araç ve misafir minibüsü.','düğün, ve, özel, gün, araç, kiralama, taşımacılık','dugun-ozel-gun-arac');
/*!40000 ALTER TABLE `hizmet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hizmet_ayar`
--

DROP TABLE IF EXISTS `hizmet_ayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hizmet_ayar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `back_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baslik_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spot_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detay_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `divider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_weight` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hizmet_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `padding` int NOT NULL DEFAULT '0',
  `tip` int NOT NULL DEFAULT '0',
  `hizmet_limit` int NOT NULL DEFAULT '6',
  `width` int NOT NULL DEFAULT '1',
  `detay_button_bg` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detay_button_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hizmet_ayar`
--

LOCK TABLES `hizmet_ayar` WRITE;
/*!40000 ALTER TABLE `hizmet_ayar` DISABLE KEYS */;
INSERT INTO `hizmet_ayar` VALUES (1,'ffffff','1e293b','64748b','1','3a3296','600','1e293b','3a3296',60,0,6,0,'3a3296','ffffff','Personel servisi, öğrenci servisi, VIP transfer ve tur taşımacılığı','hizmet, personel servisi, öğrenci, vip transfer');
/*!40000 ALTER TABLE `hizmet_ayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `htmlsayfa`
--

DROP TABLE IF EXISTS `htmlsayfa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `htmlsayfa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `icerik` text COLLATE utf8mb4_unicode_ci,
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `seo_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `htmlsayfa`
--

LOCK TABLES `htmlsayfa` WRITE;
/*!40000 ALTER TABLE `htmlsayfa` DISABLE KEYS */;
INSERT INTO `htmlsayfa` VALUES (9,'Hakkımızda','tr',1,'<div class=\"ut-content-area\">\n\n<div class=\"ut-about-intro\">\n  <div class=\"ut-divider\"></div>\n  <h2>20 Yıllık Yol Arkadaşlığı</h2>\n  <p class=\"ut-lead\">Üstün Tur Turizm Taşımacılık Ltd. Şti., 2006 yılından bu yana İstanbul ve çevresinde personel servisi, öğrenci servisi, VIP transfer ve şehirler arası tur taşımacılığı alanlarında sektörün öncü firmalarından biridir.</p>\n  <p>150 araçlık modern filomuz ve 200ün üzerinde profesyonel ekibimizle Türkiyenin önde gelen 100den fazla kurumsal müşterisinin günlük ulaşım operasyonlarını yönetiyoruz.</p>\n</div>\n\n<h3>Hikayemiz</h3>\n<p>Mehmet Üstün önderliğinde 2006 yılında 5 araçlık küçük bir filo ile yola çıkan Üstün Tur, kuruluş yıllarından itibaren <strong>güvenli, konforlu ve zamanında ulaşım</strong> ilkelerini benimsemiştir. Geçen yıllar içinde sürekli yenilenen filomuz, eğitimli kadromuz ve teknolojik altyapımızla bugün İstanbulun lider servis taşımacılığı firmalarından biri konumuna geldik.</p>\n<p>5 milyondan fazla yolculuğa ve 50 milyondan fazla kilometreye eşlik ettik. Her bir yolculukta, bizi tercih eden kurumlara ve bireylere kalitemizi kanıtlamayı, güvenlerini boşa çıkarmamayı en önemli sorumluluk olarak görüyoruz.</p>\n\n<h3>Misyonumuz</h3>\n<p>Personel ve öğrenci taşımacılığında <strong>güvenli, konforlu, çevre dostu ve teknolojik altyapıyla desteklenmiş</strong> ulaşım çözümleri sunarak, müşterilerimizin günlük operasyonlarına değer katmak. Her bir yolcunun aracımıza adım attığı andan, varış noktasına ulaşana kadar geçen sürede en yüksek kalite standartlarını korumak.</p>\n\n<h3>Vizyonumuz</h3>\n<p>Sektörün gelişimine öncülük eden, çağdaş teknolojileri kullanan, müşteri memnuniyetinde marka değerini sürekli yükselten ve <strong>Türkiyenin en güvenilir taşımacılık markası</strong> olarak tanınmak. Sürdürülebilir filo dönüşümü ile çevreye saygılı, dijitalleşme ile rakamlarla yönetilen bir ulaşım altyapısı oluşturmak.</p>\n\n<h3>Stratejik Hedeflerimiz</h3>\n<ul>\n<li>2030 yılına kadar filomuzun %30unu hibrit/elektrikli araçlardan oluşturmak</li>\n<li>Yapay zeka destekli rota optimizasyonu ile %25 yakıt tasarrufu</li>\n<li>Müşteri memnuniyetini %98 ve üzerinde tutmak</li>\n<li>Şoför eğitim programlarını sürekli yenilemek</li>\n<li>200+ kurumsal müşteriye ulaşmak</li>\n</ul>\n\n<h3>Değerlerimiz</h3>\n<ul>\n<li><strong>Güvenlik:</strong> Her yolculukta öncelikli prensibimiz.</li>\n<li><strong>Profesyonellik:</strong> Eğitimli kadrolar ve standardize süreçler.</li>\n<li><strong>Sürdürülebilirlik:</strong> Çevre dostu filo dönüşümü.</li>\n<li><strong>Müşteri Odaklılık:</strong> Her müşterinin ihtiyacına özel çözüm.</li>\n<li><strong>Yenilikçilik:</strong> GPS takip, mobil uygulama ve dijital raporlama.</li>\n<li><strong>Şeffaflık:</strong> Açık fiyatlandırma, periyodik raporlama.</li>\n</ul>\n\n<h3>Kalite Politikamız</h3>\n<p><strong>ISO 9001:2015 Kalite Yönetim Sistemi</strong> ve <strong>ISO 14001:2015 Çevre Yönetim Sistemi</strong> belgelerine sahip firmamız, tüm operasyonlarını uluslararası standartlarda yönetmektedir. UKOME yönetmeliklerine tam uyum, periyodik araç bakımları, şoför psikoteknik ve eğitim süreçleri ile kalitemizi sürekli yükseltiyoruz.</p>\n\n<h3>Sürekli İyileştirme</h3>\n<ul>\n<li><strong>İç Denetimler:</strong> 6 ayda bir kapsamlı iç denetim</li>\n<li><strong>Çalışan Eğitimleri:</strong> Yıllık 40 saat zorunlu eğitim</li>\n<li><strong>Müşteri Anketleri:</strong> Aylık memnuniyet anketleri</li>\n<li><strong>Teknolojik Yatırım:</strong> Filo yenileme planı ve dijital takip</li>\n<li><strong>Çevre Bilinci:</strong> Yakıt tüketimi ve karbon ayak izi raporlama</li>\n<li><strong>Şoför Performansı:</strong> Defansif sürüş ve psikoteknik testler</li>\n</ul>\n\n<h3>Sahip Olduğumuz Belgeler</h3>\n<ul>\n<li>ISO 9001:2015 Kalite Yönetim Sistemi</li>\n<li>ISO 14001:2015 Çevre Yönetim Sistemi</li>\n<li>TÜRSAB A Grubu İşletme Belgesi</li>\n<li>Bakanlık D2 Yetki Belgesi</li>\n<li>TSE Hizmet Yeterlilik Belgesi</li>\n<li>İSG Belgesi</li>\n</ul>\n\n<h3>Rakamlarla Üstün Tur</h3>\n<ul>\n<li>20+ yıl sektör tecrübesi</li>\n<li>150+ araçlık modern filo</li>\n<li>200+ uzman çalışan</li>\n<li>100+ kurumsal müşteri</li>\n<li>5.000.000+ tamamlanan yolculuk</li>\n<li>50.000.000+ kilometre güvenli ulaşım</li>\n</ul>\n\n</div>','Üstün Tur 20 yıllık tecrübe — hikayemiz, misyon-vizyon, kalite politikamız ve değerlerimiz','hakkimizda','üstün tur, hakkımızda, misyon, vizyon, kalite, kurumsal, taşımacılık'),(10,'Misyon ve Vizyon','tr',0,'<div class=\"ut-content-area\">\n<h2>Misyon ve Vizyonumuz</h2>\n<p class=\"ut-lead\">20 yılı aşkın sektör deneyimimizle, ulaşımın geleceğini şekillendiren değerlere bağlı kaldık.</p>\n\n<h3>Misyonumuz</h3>\n<p>Personel ve öğrenci taşımacılığında <strong>güvenli, konforlu, çevre dostu ve teknolojik altyapıyla desteklenmiş</strong> ulaşım çözümleri sunarak, müşterilerimizin günlük operasyonlarına değer katmak. Her bir yolcunun aracımıza adım attığı andan, varış noktasına ulaşana kadar geçen sürede en yüksek kalite standartlarını korumak.</p>\n\n<h3>Vizyonumuz</h3>\n<p>Sektörün gelişimine öncülük eden, çağdaş teknolojileri kullanan, müşteri memnuniyetinde marka değerini sürekli yükselten ve <strong>Türkiyenin en güvenilir taşımacılık markası</strong> olarak tanınmak. Sürdürülebilir filo dönüşümü ile çevreye saygılı, dijitalleşme ile rakamlarla yönetilen bir ulaşım altyapısı oluşturmak.</p>\n\n<h3>Stratejik Hedeflerimiz</h3>\n<ul>\n<li>2030 yılına kadar filomuzun %30unu hibrit/elektrikli araçlardan oluşturmak</li>\n<li>Yapay zeka destekli rota optimizasyonu ile %25 yakıt tasarrufu</li>\n<li>Müşteri memnuniyetini %98 ve üzerinde tutmak</li>\n<li>Şoför eğitim programlarını sürekli yenilemek</li>\n<li>200+ kurumsal müşteriye ulaşmak</li>\n</ul>\n</div>','Üstün Tur misyon vizyon ve stratejik hedefler','misyon-vizyon','misyon, vizyon, hedefler'),(11,'Kalite Politikamız','tr',0,'<div class=\"ut-content-area\">\n<h2>Kalite Politikamız</h2>\n<p class=\"ut-lead\">ISO 9001:2015 ve ISO 14001:2015 belgeli firmamız, uluslararası standartlarda yönetilen operasyonlarla kalitesini her gün ileriye taşıyor.</p>\n\n<h3>Sertifikalı Yönetim</h3>\n<p>Tüm operasyonlarımız ISO 9001 Kalite Yönetim Sistemi ile yönetilmektedir. Çevre etkimizi ölçer ve azaltmaya çalışırız (ISO 14001). İSG belgemizle çalışan güvenliğini en üst düzeyde tutarız.</p>\n\n<h3>Sürekli İyileştirme Yaklaşımımız</h3>\n<ul>\n<li><strong>İç Denetimler:</strong> 6 ayda bir kapsamlı iç denetim</li>\n<li><strong>Çalışan Eğitimleri:</strong> Yıllık 40 saat zorunlu eğitim</li>\n<li><strong>Müşteri Anketleri:</strong> Aylık memnuniyet anketleri</li>\n<li><strong>Teknolojik Yatırım:</strong> Filo yenileme planı ve dijital takip</li>\n<li><strong>Çevre Bilinci:</strong> Yakıt tüketimi ve karbon ayak izi raporlama</li>\n<li><strong>Şoför Performansı:</strong> Defansif sürüş ve psikoteknik testler</li>\n</ul>\n\n<h3>Sahip Olduğumuz Belgeler</h3>\n<ul>\n<li>ISO 9001:2015 Kalite Yönetim Sistemi</li>\n<li>ISO 14001:2015 Çevre Yönetim Sistemi</li>\n<li>TÜRSAB A Grubu İşletme Belgesi</li>\n<li>Bakanlık D2 Yetki Belgesi</li>\n<li>TSE Hizmet Yeterlilik Belgesi</li>\n<li>İSG Belgesi</li>\n</ul>\n</div>','Üstün Tur kalite politikamız ISO 9001 ISO 14001','kalite-politikamiz','kalite, ISO, sertifika'),(12,'KVKK Aydınlatma Metni','tr',0,'<div class=\"ut-content-area\">\n<h2>KVKK Aydınlatma Metni</h2>\n<p class=\"ut-lead\">6698 Sayılı Kişisel Verilerin Korunması Kanunu (KVKK) kapsamında işlenen kişisel verileriniz hakkında detaylı bilgilendirme.</p>\n\n<h3>Veri Sorumlusu</h3>\n<p>Üstün Tur Turizm Taşımacılık Ltd. Şti.<br>\nAdres: İkitelli OSB, Bağcılar / İSTANBUL<br>\nTelefon: 0212 549 00 00<br>\nE-posta: kvkk@ustuntur.com.tr</p>\n\n<h3>İşlenen Kişisel Veri Kategorileri</h3>\n<ul>\n<li><strong>Kimlik Bilgileri:</strong> Ad, soyad, T.C. kimlik no</li>\n<li><strong>İletişim Bilgileri:</strong> Telefon, e-posta, adres</li>\n<li><strong>Mesleki Deneyim:</strong> Eğitim, iş geçmişi (İK başvurularında)</li>\n<li><strong>Müşteri İşlem Bilgileri:</strong> Sözleşme, fatura, hizmet detayları</li>\n<li><strong>Görsel Kayıtlar:</strong> Araç içi güvenlik kamera kayıtları</li>\n</ul>\n\n<h3>İşlenme Amaçları</h3>\n<ul>\n<li>Hizmet sözleşmesinin kurulması ve yürütülmesi</li>\n<li>Operasyonel süreçlerin yönetimi</li>\n<li>Yasal yükümlülüklerin yerine getirilmesi</li>\n<li>İletişim ve müşteri ilişkileri</li>\n<li>Güvenlik tedbirleri</li>\n</ul>\n\n<h3>Haklarınız</h3>\n<p>KVKKnın 11. maddesi uyarınca; verilerinizin işlenip işlenmediğini öğrenme, işlenmiş ise bilgi talep etme, düzeltme, silme, aktarılan üçüncü kişileri bilme, otomatik sistemlerle analiz edilmiş verilerin sonucu hakkında itiraz hakkına sahipsiniz. Bu haklarınızı kullanmak için <a href=\"mailto:kvkk@ustuntur.com.tr\">kvkk@ustuntur.com.tr</a> adresine başvurabilirsiniz.</p>\n</div>','KVKK aydınlatma metni - kişisel veri koruma','kvkk','kvkk, gizlilik, veri');
/*!40000 ALTER TABLE `htmlsayfa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insan_kaynaklari`
--

DROP TABLE IF EXISTS `insan_kaynaklari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insan_kaynaklari` (
  `id` int NOT NULL AUTO_INCREMENT,
  `durum` int NOT NULL DEFAULT '0',
  `isim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailadresi` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telno` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d_tarih` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cinsiyet` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medeni` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kangrubu` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `askerlik` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ehliyet` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `il` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ilce` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `egitim` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yabancidil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tecrube` text COLLATE utf8mb4_unicode_ci,
  `kisabilgi` text COLLATE utf8mb4_unicode_ci,
  `tarih` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insan_kaynaklari`
--

LOCK TABLES `insan_kaynaklari` WRITE;
/*!40000 ALTER TABLE `insan_kaynaklari` DISABLE KEYS */;
/*!40000 ALTER TABLE `insan_kaynaklari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kargo`
--

DROP TABLE IF EXISTS `kargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kargo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `eposta_mesaj` text COLLATE utf8mb4_unicode_ci,
  `kargo_adi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siparis_urun_id` int NOT NULL DEFAULT '0',
  `sms_mesaj` text COLLATE utf8mb4_unicode_ci,
  `takip_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kargo`
--

LOCK TABLES `kargo` WRITE;
/*!40000 ALTER TABLE `kargo` DISABLE KEYS */;
/*!40000 ALTER TABLE `kargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `katalog`
--

DROP TABLE IF EXISTS `katalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `katalog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gorsel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `katalog`
--

LOCK TABLES `katalog` WRITE;
/*!40000 ALTER TABLE `katalog` DISABLE KEYS */;
INSERT INTO `katalog` VALUES (1,'Kurumsal Tanıtım Kitapçığı 2026','tr','catalog/cover.jpg','catalog/ustun-tur-katalog-2026.pdf'),(2,'Filo Kataloğu','tr','catalog/filo.jpg','catalog/filo-katalog.pdf');
/*!40000 ALTER TABLE `katalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loader`
--

DROP TABLE IF EXISTS `loader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loader` (
  `id` int NOT NULL AUTO_INCREMENT,
  `back_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baslik_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spot_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delay` int NOT NULL DEFAULT '0',
  `durum` int NOT NULL DEFAULT '0',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loader`
--

LOCK TABLES `loader` WRITE;
/*!40000 ALTER TABLE `loader` DISABLE KEYS */;
INSERT INTO `loader` VALUES (1,'ffffff',NULL,NULL,500,0,'loader.gif');
/*!40000 ALTER TABLE `loader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marka`
--

DROP TABLE IF EXISTS `marka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marka` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `gorsel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sira` int NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marka`
--

LOCK TABLES `marka` WRITE;
/*!40000 ALTER TABLE `marka` DISABLE KEYS */;
INSERT INTO `marka` VALUES (1,'Müşteri 1',1,'1723733670078-131-107.png',1,'#'),(2,'Müşteri 2',1,'2612679973244-998-116.png',2,'#'),(3,'Müşteri 3',1,'5359222586266-418-75.png',3,'#'),(4,'Müşteri 4',1,'6370862247422-130-logo-1.png',4,'#'),(5,'Müşteri 5',1,'65911175-819-womens-stylish-shoes-new-balance-png-logo-1.png',5,'#');
/*!40000 ALTER TABLE `marka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marka_ayar`
--

DROP TABLE IF EXISTS `marka_ayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marka_ayar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `back_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baslik_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spot_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `divider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_weight` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `padding` int NOT NULL DEFAULT '0',
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `width` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marka_ayar`
--

LOCK TABLES `marka_ayar` WRITE;
/*!40000 ALTER TABLE `marka_ayar` DISABLE KEYS */;
INSERT INTO `marka_ayar` VALUES (1,'ffffff','1e293b','64748b','3a3296','600',60,'Müşterilerimiz','müşteri, marka',0);
/*!40000 ALTER TABLE `marka_ayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesaj`
--

DROP TABLE IF EXISTS `mesaj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mesaj` (
  `id` int NOT NULL AUTO_INCREMENT,
  `durum` int NOT NULL DEFAULT '0',
  `isim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eposta` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telno` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mesaj` text COLLATE utf8mb4_unicode_ci,
  `tarih` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesaj`
--

LOCK TABLES `mesaj` WRITE;
/*!40000 ALTER TABLE `mesaj` DISABLE KEYS */;
/*!40000 ALTER TABLE `mesaj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moduller`
--

DROP TABLE IF EXISTS `moduller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moduller` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `kod` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sira` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moduller`
--

LOCK TABLES `moduller` WRITE;
/*!40000 ALTER TABLE `moduller` DISABLE KEYS */;
INSERT INTO `moduller` VALUES (1,'Hizmetler',1,'includes/template/_modules/services.php',1),(2,'Hakkımızda',0,'includes/template/_modules/about.php',2),(3,'Sayaclar',1,'includes/template/_modules/counters.php',3),(4,'Markalar',0,'includes/template/_modules/clients.php',6),(5,'Yorumlar',0,'includes/template/_modules/comments.php',4),(6,'Blog',0,'includes/template/_modules/blog.php',5),(7,'Neden Üstün Tur',1,'includes/template/_modules/features.php',2),(8,'CTA Banner',1,'includes/template/_modules/trigger_bottom.php',4);
/*!40000 ALTER TABLE `moduller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `odeme_ayar`
--

DROP TABLE IF EXISTS `odeme_ayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `odeme_ayar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `button_bg` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eft` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iyzico_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iyzico_secure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kargo_sistemi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kredi_kart` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `normal_siparis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytr_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytr_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytr_salt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payu_merchant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payu_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paywant_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paywant_odeme_tur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paywant_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pos_tur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sepet_sistemi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopier_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopier_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `simge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stok_durum` int NOT NULL DEFAULT '0',
  `stok_gorunum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wp_siparis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_count_bg` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_count_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kargo_limit` decimal(12,2) DEFAULT '0.00',
  `kargolimit_bg_1` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kargolimit_bg_2` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kargolimit_font` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kargolimit_header` int NOT NULL DEFAULT '0',
  `kargolimit_product` int NOT NULL DEFAULT '0',
  `kargolimit_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kargolimit_width` int NOT NULL DEFAULT '1',
  `sepet_step` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `odeme_ayar`
--

LOCK TABLES `odeme_ayar` WRITE;
/*!40000 ALTER TABLE `odeme_ayar` DISABLE KEYS */;
INSERT INTO `odeme_ayar` VALUES (1,'3a3296','ffffff','0','','','0','0','0','','','','','','','havale','','paytr','0','','','₺',0,'0','0','3a3296','3a3296','ffffff','fa-shopping-cart',0.00,'3a3296','5e54c1','Open Sans',0,0,'ffffff',0,1);
/*!40000 ALTER TABLE `odeme_ayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ozellik`
--

DROP TABLE IF EXISTS `ozellik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ozellik` (
  `id` int NOT NULL AUTO_INCREMENT,
  `anasayfa` int NOT NULL DEFAULT '0',
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sira` int NOT NULL DEFAULT '0',
  `spot` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ozellik`
--

LOCK TABLES `ozellik` WRITE;
/*!40000 ALTER TABLE `ozellik` DISABLE KEYS */;
INSERT INTO `ozellik` VALUES (13,1,'20 Yıllık Tecrübe','tr',1,'fa-trophy',1,'2006\'dan bu yana sektörde lider'),(14,1,'150+ Araçlık Modern Filo','tr',1,'fa-truck',2,'Geniş ve düzenli araç parkı'),(15,1,'GPS Takip Sistemi','tr',1,'fa-map-marker',3,'Anlık konum takip imkanı'),(16,1,'7/24 Müşteri Desteği','tr',1,'fa-headphones',4,'Her an ulaşabileceğiniz destek hattı'),(17,1,'100+ Kurumsal Müşteri','tr',1,'fa-users',5,'Türkiye\'nin önde gelen şirketleri'),(18,1,'SRC Belgeli Şoförler','tr',1,'fa-shield',6,'Eğitimli ve güvenilir kadro');
/*!40000 ALTER TABLE `ozellik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ozellik_ayar`
--

DROP TABLE IF EXISTS `ozellik_ayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ozellik_ayar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `back_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baslik_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spot_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `padding` int NOT NULL DEFAULT '0',
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `width` int NOT NULL DEFAULT '0',
  `ozellik_limit` int NOT NULL DEFAULT '6',
  `head_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_back_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_border_radius` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `box_head_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `box_spot_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ozellik_ayar`
--

LOCK TABLES `ozellik_ayar` WRITE;
/*!40000 ALTER TABLE `ozellik_ayar` DISABLE KEYS */;
INSERT INTO `ozellik_ayar` VALUES (1,'ffffff','1e293b','64748b',80,'Neden Üstün Tur?','özellik, avantaj',0,6,'f6f7fb','3a3296','0','ffffff','1e293b','64748b');
/*!40000 ALTER TABLE `ozellik_ayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_header`
--

DROP TABLE IF EXISTS `page_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_header` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `padding` int NOT NULL DEFAULT '0',
  `page_id` int NOT NULL DEFAULT '0',
  `pasif_text_color` int NOT NULL DEFAULT '0',
  `text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tip` int NOT NULL DEFAULT '0',
  `width` int NOT NULL DEFAULT '0',
  `border_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shadow` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_header`
--

LOCK TABLES `page_header` WRITE;
/*!40000 ALTER TABLE `page_header` DISABLE KEYS */;
INSERT INTO `page_header` VALUES (1,'Hakkımızda','1e2a4a','humansource.png',80,1,0,'ffffff',1,1,'3a3296',NULL),(2,'Hizmetlerimiz','1e2a4a','humansource2.png',80,2,0,'ffffff',1,1,'3a3296',NULL),(3,'Filomuz','1e2a4a','humansource.png',80,3,0,'ffffff',1,1,'3a3296',NULL),(4,'Galeri','1e2a4a','humansource2.png',80,4,0,'ffffff',1,1,'3a3296',NULL),(5,'Blog','1e2a4a','humansource.png',80,5,0,'ffffff',1,1,'3a3296',NULL),(6,'İletişim','1e2a4a','humansource2.png',80,6,0,'ffffff',1,1,'3a3296',NULL),(7,'Sıkça Sorulanlar','1e2a4a','humansource.png',80,7,0,'ffffff',1,1,'3a3296',NULL),(8,'Belgelerimiz','1e2a4a','humansource2.png',80,8,0,'ffffff',1,1,'3a3296',NULL),(9,'Ekibimiz','1e2a4a','humansource.png',80,9,0,'ffffff',1,1,'3a3296',NULL);
/*!40000 ALTER TABLE `page_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paywant_user`
--

DROP TABLE IF EXISTS `paywant_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paywant_user` (
  `user_email` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paywant_user`
--

LOCK TABLES `paywant_user` WRITE;
/*!40000 ALTER TABLE `paywant_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `paywant_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `popup`
--

DROP TABLE IF EXISTS `popup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `popup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `delay` int NOT NULL DEFAULT '0',
  `durum` int NOT NULL DEFAULT '0',
  `embed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gorsel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_durum` int NOT NULL DEFAULT '0',
  `padding` int NOT NULL DEFAULT '0',
  `tur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `popup`
--

LOCK TABLES `popup` WRITE;
/*!40000 ALTER TABLE `popup` DISABLE KEYS */;
INSERT INTO `popup` VALUES (1,3,0,'','',0,20,'image',NULL,NULL);
/*!40000 ALTER TABLE `popup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pricing`
--

DROP TABLE IF EXISTS `pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pricing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `fiyat` decimal(12,2) DEFAULT '0.00',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `odeme_date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sira` int NOT NULL DEFAULT '0',
  `tavsiye` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pricing`
--

LOCK TABLES `pricing` WRITE;
/*!40000 ALTER TABLE `pricing` DISABLE KEYS */;
INSERT INTO `pricing` VALUES (1,'STANDART PAKET','tr',1,12.50,'flaticon-bus','aylık',1,NULL,NULL),(2,'PREMIUM PAKET','tr',1,24.50,'flaticon-medal','aylık',2,NULL,NULL),(3,'VIP PAKET','tr',1,45.00,'flaticon-star','aylık',3,NULL,NULL);
/*!40000 ALTER TABLE `pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pricing_ayar`
--

DROP TABLE IF EXISTS `pricing_ayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pricing_ayar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `back_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baslik_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spot_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_bg` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `divider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_weight` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `ozellik_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `padding` int NOT NULL DEFAULT '0',
  `tags` text COLLATE utf8mb4_unicode_ci,
  `tavsiye_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tavsiye_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pricing_ayar`
--

LOCK TABLES `pricing_ayar` WRITE;
/*!40000 ALTER TABLE `pricing_ayar` DISABLE KEYS */;
INSERT INTO `pricing_ayar` VALUES (1,'f5f7fb','1e293b',NULL,'3a3296','ffffff','3a3296','600','3a3296','Servis paketleri ve fiyatlandırma',NULL,60,'paket, fiyat',NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `pricing_ayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pricing_ozellik`
--

DROP TABLE IF EXISTS `pricing_ozellik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pricing_ozellik` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pr_id` int NOT NULL DEFAULT '0',
  `sira` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pricing_ozellik`
--

LOCK TABLES `pricing_ozellik` WRITE;
/*!40000 ALTER TABLE `pricing_ozellik` DISABLE KEYS */;
INSERT INTO `pricing_ozellik` VALUES (1,'15 Kişilik Servis','tr',1,1),(2,'Tek Güzergah','tr',1,2),(3,'Standart Şoför','tr',1,3),(4,'Klima','tr',1,4),(5,'25 Kişilik Servis','tr',2,1),(6,'İki Güzergah','tr',2,2),(7,'SRC Belgeli Şoför','tr',2,3),(8,'Klima + USB','tr',2,4),(9,'Rehber Hizmeti','tr',2,5),(10,'46 Kişilik Otobüs','tr',3,1),(11,'Sınırsız Güzergah','tr',3,2),(12,'Premium Şoför','tr',3,3),(13,'Tüm İmkanlar','tr',3,4),(14,'VIP Hostes','tr',3,5),(15,'İkram Servisi','tr',3,6);
/*!40000 ALTER TABLE `pricing_ozellik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proje`
--

DROP TABLE IF EXISTS `proje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proje` (
  `id` int NOT NULL AUTO_INCREMENT,
  `adres` text COLLATE utf8mb4_unicode_ci,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `embed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finish_date` datetime DEFAULT NULL,
  `gorsel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icerik` text COLLATE utf8mb4_unicode_ci,
  `kat_id` int NOT NULL DEFAULT '0',
  `maps` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `spot` text COLLATE utf8mb4_unicode_ci,
  `start_date` datetime DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proje`
--

LOCK TABLES `proje` WRITE;
/*!40000 ALTER TABLE `proje` DISABLE KEYS */;
INSERT INTO `proje` VALUES (1,'Maslak, İstanbul','ABC Holding Personel Servisi','tr',1,'',NULL,'0415911163prop5.jpg','<p>500+ çalışan için günlük personel servisi hizmeti, 25 araç, 8 farklı güzergah.</p>',1,'','ABC Holding personel servisi','500 personelin günlük servisi','2023-09-01 00:00:00','kurumsal, personel','https://abc.com.tr'),(2,'Beşiktaş, İstanbul','XYZ Eğitim Kurumu Öğrenci Servisi','tr',1,'',NULL,'0439367669prop4.jpeg','<p>1200 öğrencinin günlük taşınması, 35 sarı araç, kadın rehber kadrosu.</p>',2,'','XYZ Eğitim Kurumu öğrenci servisi','1200 öğrenci günlük servisi','2024-09-15 00:00:00','okul, öğrenci','https://xyz.k12.tr'),(3,'İstanbul Kongre Merkezi','Teknoloji Zirvesi 2025','tr',1,'','2025-04-12 00:00:00','0487806961prop2.jpeg','<p>3 günlük etkinlik için 5000 katılımcının havalimanı transferi ve şehir içi ulaşımı.</p>',3,'','Teknoloji Zirvesi transferi','5000 katılımcı transferi','2025-04-10 00:00:00','etkinlik, kongre',''),(4,'Antalya','Kurum Bayram Tatili Organizasyonu','tr',1,'','2025-06-25 00:00:00','2803913603999-903-turizm-tasimacilik-araba-696x408.jpg','<p>200 personelin Antalya tatil organizasyonu için tur otobüsü hizmeti.</p>',3,'','Kurum tatil organizasyonu','200 kişilik Antalya turu','2025-06-20 00:00:00','tur, organizasyon',''),(5,'Levent, İstanbul','DEF Bank Personel Servisi','tr',1,'',NULL,'2803913603999-903-turizm-tasimacilik-araba-696x408.jpg','<p>800 banka çalışanı için 5 yıllık servis sözleşmesi.</p>',1,'','DEF Bank personel servisi','800 personel, 5 yıl sözleşme','2022-01-01 00:00:00','banka, kurumsal',''),(6,'İstanbul Üniversitesi','Üniversite Öğrenci Transferi','tr',1,'',NULL,'1056386240-36-proje.jpg','<p>3 farklı kampüs için günlük öğrenci ring servisi.</p>',2,'','Üniversite öğrenci servisi','3 kampüs ring servisi','2024-09-01 00:00:00','üniversite, kampüs','');
/*!40000 ALTER TABLE `proje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proje_ayar`
--

DROP TABLE IF EXISTS `proje_ayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proje_ayar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `back_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baslik_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spot_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detay_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `divider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_weight` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `padding` int NOT NULL DEFAULT '0',
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `width` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proje_ayar`
--

LOCK TABLES `proje_ayar` WRITE;
/*!40000 ALTER TABLE `proje_ayar` DISABLE KEYS */;
INSERT INTO `proje_ayar` VALUES (1,'ffffff',NULL,NULL,'1','d4af37','600',60,'Üstün Tur referans projeleri','proje, referans, kurumsal',0);
/*!40000 ALTER TABLE `proje_ayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proje_kat`
--

DROP TABLE IF EXISTS `proje_kat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proje_kat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `anasayfa` int NOT NULL DEFAULT '0',
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `sira` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proje_kat`
--

LOCK TABLES `proje_kat` WRITE;
/*!40000 ALTER TABLE `proje_kat` DISABLE KEYS */;
INSERT INTO `proje_kat` VALUES (7,1,'Kurumsal Projeler','tr',1,1),(8,1,'Eğitim Kurumları','tr',1,2),(9,1,'Etkinlikler','tr',1,3);
/*!40000 ALTER TABLE `proje_kat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proje_resim`
--

DROP TABLE IF EXISTS `proje_resim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proje_resim` (
  `id` int NOT NULL AUTO_INCREMENT,
  `proje_id` int NOT NULL DEFAULT '0',
  `sira` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proje_resim`
--

LOCK TABLES `proje_resim` WRITE;
/*!40000 ALTER TABLE `proje_resim` DISABLE KEYS */;
/*!40000 ALTER TABLE `proje_resim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sabit_header`
--

DROP TABLE IF EXISTS `sabit_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sabit_header` (
  `id` int NOT NULL AUTO_INCREMENT,
  `durum` int NOT NULL DEFAULT '0',
  `padding` int NOT NULL DEFAULT '0',
  `shadow` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sabit_header`
--

LOCK TABLES `sabit_header` WRITE;
/*!40000 ALTER TABLE `sabit_header` DISABLE KEYS */;
INSERT INTO `sabit_header` VALUES (1,0,10,'1');
/*!40000 ALTER TABLE `sabit_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sayac`
--

DROP TABLE IF EXISTS `sayac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sayac` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int NOT NULL DEFAULT '0',
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plus` int NOT NULL DEFAULT '0',
  `sira` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sayac`
--

LOCK TABLES `sayac` WRITE;
/*!40000 ALTER TABLE `sayac` DISABLE KEYS */;
INSERT INTO `sayac` VALUES (1,'Mutlu Müşteri',1500,'tr',1,'fa-smile-o',1,1),(2,'Tecrübe Yılı',20,'tr',1,'fa-trophy',1,2),(3,'Servis Aracı',150,'tr',1,'fa-truck',1,3),(4,'Tamamlanan Proje',3500,'tr',1,'fa-check-circle',1,4);
/*!40000 ALTER TABLE `sayac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sayac_ayar`
--

DROP TABLE IF EXISTS `sayac_ayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sayac_ayar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `back_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baslik_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spot_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `box_bg_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `box_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `padding` int NOT NULL DEFAULT '0',
  `width` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sayac_ayar`
--

LOCK TABLES `sayac_ayar` WRITE;
/*!40000 ALTER TABLE `sayac_ayar` DISABLE KEYS */;
INSERT INTO `sayac_ayar` VALUES (1,'1e2a4a',NULL,NULL,'3a3296','ffffff',60,0);
/*!40000 ALTER TABLE `sayac_ayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siparis`
--

DROP TABLE IF EXISTS `siparis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `siparis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `isim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siparis_durum` int NOT NULL DEFAULT '0',
  `siparis_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siparis_tarih` datetime DEFAULT NULL,
  `tel` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siparis`
--

LOCK TABLES `siparis` WRITE;
/*!40000 ALTER TABLE `siparis` DISABLE KEYS */;
/*!40000 ALTER TABLE `siparis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siparis_urunler`
--

DROP TABLE IF EXISTS `siparis_urunler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `siparis_urunler` (
  `id` int NOT NULL AUTO_INCREMENT,
  `siparis_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siparis_urunler`
--

LOCK TABLES `siparis_urunler` WRITE;
/*!40000 ALTER TABLE `siparis_urunler` DISABLE KEYS */;
/*!40000 ALTER TABLE `siparis_urunler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slider` (
  `id` int NOT NULL AUTO_INCREMENT,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baslik_animation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_animation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_bg` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` text COLLATE utf8mb4_unicode_ci,
  `button_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dark_bg` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `gorsel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sira` int NOT NULL DEFAULT '0',
  `slider_2_bg` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spot` text COLLATE utf8mb4_unicode_ci,
  `spot_animation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_bg` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider_ayar`
--

DROP TABLE IF EXISTS `slider_ayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slider_ayar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `font` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` int NOT NULL DEFAULT '0',
  `mobil_height` int NOT NULL DEFAULT '0',
  `width` int NOT NULL DEFAULT '0',
  `width_2` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider_ayar`
--

LOCK TABLES `slider_ayar` WRITE;
/*!40000 ALTER TABLE `slider_ayar` DISABLE KEYS */;
INSERT INTO `slider_ayar` VALUES (1,'Open Sans',1,1,0,0);
/*!40000 ALTER TABLE `slider_ayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms`
--

DROP TABLE IF EXISTS `sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bildirim_numara` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `iletimerkezi_baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iletimerkezi_pass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iletimerkezi_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `netgsm_baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `netgsm_pass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `netgsm_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_firma` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ucuzsms_baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ucuzsms_pass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ucuzsms_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms`
--

LOCK TABLES `sms` WRITE;
/*!40000 ALTER TABLE `sms` DISABLE KEYS */;
INSERT INTO `sms` VALUES (1,'',0,'','','','','','','netgsm','','','');
/*!40000 ALTER TABLE `sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_numaralar`
--

DROP TABLE IF EXISTS `sms_numaralar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_numaralar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gsm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_numaralar`
--

LOCK TABLES `sms_numaralar` WRITE;
/*!40000 ALTER TABLE `sms_numaralar` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_numaralar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sosyal`
--

DROP TABLE IF EXISTS `sosyal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sosyal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sira` int NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sosyal`
--

LOCK TABLES `sosyal` WRITE;
/*!40000 ALTER TABLE `sosyal` DISABLE KEYS */;
/*!40000 ALTER TABLE `sosyal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sozlesme`
--

DROP TABLE IF EXISTS `sozlesme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sozlesme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icerik` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sozlesme`
--

LOCK TABLES `sozlesme` WRITE;
/*!40000 ALTER TABLE `sozlesme` DISABLE KEYS */;
INSERT INTO `sozlesme` VALUES (2,'tr','<h3>Mesafeli Satış Sözleşmesi</h3><p>Üstün Tur Turizm Taşımacılık Ltd. Şti. ile yapılan hizmet alımlarında geçerli olan mesafeli satış sözleşmesi şartları aşağıdaki gibidir.</p><p>Müşteri talep ettiği hizmetin detaylarını teklif aşamasında onaylar. Onaylanan hizmet sözleşmenin konusunu oluşturur.</p>');
/*!40000 ALTER TABLE `sozlesme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sss`
--

DROP TABLE IF EXISTS `sss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sss` (
  `id` int NOT NULL AUTO_INCREMENT,
  `anasayfa` int NOT NULL DEFAULT '0',
  `cevap` text COLLATE utf8mb4_unicode_ci,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `sira` int NOT NULL DEFAULT '0',
  `soru` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sss`
--

LOCK TABLES `sss` WRITE;
/*!40000 ALTER TABLE `sss` DISABLE KEYS */;
INSERT INTO `sss` VALUES (21,1,'İstanbul\'un tüm ilçelerinde personel servis hizmeti veriyoruz. Avrupa ve Anadolu yakasında 100\'den fazla şirkete hizmet sağlamaktayız.','tr',1,1,'Personel servis hizmetiniz hangi bölgelerde mevcut?'),(22,1,'Tüm şoförlerimiz SRC1, SRC2 ve SRC4 belgelerine, ayrıca psikoteknik raporlarına sahiptir. Düzenli olarak alkol/madde testlerine tabi tutulurlar.','tr',1,2,'Şoförleriniz hangi belgelere sahip?'),(23,1,'Evet, tüm araçlarımız tam kapsamlı kasko, koltuk ferdi kaza sigortası ve trafik sigortasıyla güvence altındadır.','tr',1,3,'Araçlarınız sigortalı mı?'),(24,1,'Evet, tüm araçlarımızda canlı GPS takip sistemi vardır. Müşteri firmalarımız özel uygulama ile araçlarını anlık takip edebilir.','tr',1,4,'Servis aracında GPS takip sistemi var mı?'),(25,1,'Evet, tüm öğrenci servislerimizde eğitimli kadın rehber öğretmen görev yapmaktadır.','tr',1,5,'Öğrenci servisinde rehber bulunuyor mu?'),(26,0,'Web sitemizden, telefon (0542 304 64 77) veya WhatsApp üzerinden rezervasyon yapabilirsiniz. 24 saat hizmet sağlıyoruz.','tr',1,6,'VIP transfer için rezervasyon nasıl yapılır?'),(27,0,'Otobüslerimiz 30 kişi ve üzeri gruplar için kiralanmaktadır. Daha az kişi için 16-19 kişilik minibüslerimizi tercih edebilirsiniz.','tr',1,7,'Tur otobüsünüz için minimum kişi sayısı nedir?'),(28,0,'Nakit, kredi kartı, EFT/havale ve faturalı ödeme seçeneklerimiz mevcuttur. Kurumsal müşterilerimize 30 gün vade sunuyoruz.','tr',1,8,'Ödeme yöntemleriniz neler?'),(29,0,'Tüm araçlarımız GPS ile takip edilir. 5 dakikadan fazla gecikme durumunda otomatik SMS bildirimi gönderilir.','tr',1,9,'Aracın gecikmesi durumunda ne oluyor?'),(30,0,'Evet, kurumsal müşterilere ve uzun süreli sözleşmelerde özel fiyat avantajları sunuyoruz.','tr',1,10,'Toplu indirim imkanı var mı?');
/*!40000 ALTER TABLE `sss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sss_ayar`
--

DROP TABLE IF EXISTS `sss_ayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sss_ayar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `back_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baslik_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spot_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `divider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_weight` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `padding` int NOT NULL DEFAULT '0',
  `width` int NOT NULL DEFAULT '0',
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sss_ayar`
--

LOCK TABLES `sss_ayar` WRITE;
/*!40000 ALTER TABLE `sss_ayar` DISABLE KEYS */;
INSERT INTO `sss_ayar` VALUES (1,'ffffff','1e293b','64748b','3a3296','600',60,0,'Sıkça sorulan sorular','sss, soru, cevap');
/*!40000 ALTER TABLE `sss_ayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tetikleyiciler`
--

DROP TABLE IF EXISTS `tetikleyiciler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tetikleyiciler` (
  `id` int NOT NULL AUTO_INCREMENT,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` text COLLATE utf8mb4_unicode_ci,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `text` text COLLATE utf8mb4_unicode_ci,
  `text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tetikleyiciler`
--

LOCK TABLES `tetikleyiciler` WRITE;
/*!40000 ALTER TABLE `tetikleyiciler` DISABLE KEYS */;
INSERT INTO `tetikleyiciler` VALUES (3,'0','3a3296','TEKLİF AL','tr',1,'Kurumunuza özel servis çözümü için teklif alın!','ffffff','iletisim',0),(4,'1','3a3296','HEMEN TEKLİF AL','tr',1,'Personel servis taşımacılığında 20 yıllık deneyim','ffffff','iletisim',0);
/*!40000 ALTER TABLE `tetikleyiciler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticaret_bilgi`
--

DROP TABLE IF EXISTS `ticaret_bilgi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticaret_bilgi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sira` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticaret_bilgi`
--

LOCK TABLES `ticaret_bilgi` WRITE;
/*!40000 ALTER TABLE `ticaret_bilgi` DISABLE KEYS */;
INSERT INTO `ticaret_bilgi` VALUES (5,'Güvenli Ödeme','tr','flaticon-shield',1),(6,'SSL Sertifika','tr','flaticon-lock',2),(7,'Hızlı Destek','tr','flaticon-headset',3),(8,'Kalite Garantisi','tr','flaticon-medal',4);
/*!40000 ALTER TABLE `ticaret_bilgi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_visitors`
--

DROP TABLE IF EXISTS `total_visitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_visitors` (
  `session` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` bigint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_visitors`
--

LOCK TABLES `total_visitors` WRITE;
/*!40000 ALTER TABLE `total_visitors` DISABLE KEYS */;
INSERT INTO `total_visitors` VALUES ('',1778011753),('d6cba70471aba98d50ea4180af8baa5c',1777973120),('11acf2e75c398623aac8ad9318e02b2e',1777968559),('d9f8a3f4df55ce2d365e0c67894b03fb',1777968900),('b370f374d98e66e4dbfa55b8f247d260',1777969778),('a4fc603b3a6628080b9f383e5d720329',1777969821),('916521032a8cbf58627b30197bcdcb01',1777969821),('a2f3b3f31b306749ef2400cb805f893e',1777969821),('409a07f11ea7c5382ea4f80fbf3ee965',1777969821),('1aa4cdcb2b5a90a68df10356c9ee123d',1777969821),('b09c4035667ef18d4a15ce616362e8e4',1777969821),('cc0f4bb2235bd5a690c3a0e4c0f392f1',1777969821),('08ed93c33760adba3c19a20048478042',1777969821),('6ffb1ebadab5f89c72d7b8d2711f2c11',1777969821),('2eb4f5ed62b5c2562055d1faef22acbc',1777969821),('c2eb3a86e5a64eab48d60446ca909bf0',1777969821),('0d62e0f1d08993fe24bdaf3284733c0d',1777969822),('d8e93f5e36cd08fbaaf2f88700c557e3',1777969822),('986fdf092c3ecf5d5fe3e8228f646e4a',1777969822),('08261fc4cb4d9a1c1560a6aa9ca21225',1777969822),('3abd9b5b54b3a55c90611735bce52ffe',1777969822),('3308ff5d9db9dfb76f61fd1c9fb0d54b',1777969822),('90d25c18dbc8860805ed2b79b4abd03c',1777969822),('439d0dc482a92e8b418ff48fd25511c2',1777969822),('d9980e476a577f8d1d0b53aeb6d3fc84',1777969822),('f99db0389950b5c8a0336eaf61373f99',1777969822),('d6d674e6d0c8a0df00173019578a3fb8',1777969822),('c52c7396608c01ea65a4be06c3b0bc9f',1777969822),('4c19e321b14344913ce506d0011ce005',1777969822),('9519f9f32658738fae8a7c4e4345f0be',1777969822),('5ad43c4ed61ff8a392041a1568d1cf56',1777969822),('4900d458272547b40e2732227a79d60f',1777969822),('437583f59b34a7dc4ffee9d793dadf18',1777969822),('f42b4625b2c3374c481930de6d0dcf73',1777969822),('78151d8c1306062787ed816bc014d534',1777969822),('983c35ce2796b67d88931075a0b23807',1777969822),('9bd6903949d7f3e4abfcb5c73e3f44ac',1777969822),('bb7f597c775de026bf0ff5d0d258a27f',1777969822),('899c7112dcd503e0f0dc0989872ac416',1777969822),('9f3b2b2bfb0296399828b46abc319d77',1777969822),('c96f3c043c3c287ae60fd4966382577f',1777969822),('0160eb4c2e056d846568d3ca0ffdb237',1777969822),('49d6b99610f693ff30f36f51ebd7853b',1777969822),('eac3629e7130761437e197d4e938a285',1777969822),('b94380095a8fac8f422383f6fb214981',1777969822),('f640962eb3b0039122a819a7323bdd86',1777969822),('80b655e8febd20a9386b4e24fe22ac08',1777969822),('0aa21662a34c14d5237b6b3629a96f31',1777969822),('1a036f35fc952df69081fd5da097717f',1777969822),('313f9f95b040207cf5245b5540dad0f1',1777969822),('fdb68a52735ba2120f7a3dd3a96e34b2',1777969842),('c647f4741b90834b2821c60c48aadba0',1777969842),('172299d3f2089b47e31ab97d2acb6108',1777969842),('6d12ba562136eea91df13934d4bc4ae4',1777969943),('423f47ee3789168c95dcda6e9f44a853',1777969943),('5a9d6f189a41173e78b3f7262db755b0',1777969943),('9265805bf42a465e4a1649288a74f3de',1777969943),('ceb93e4564d9d49e3633e693ff495360',1777969943),('a5e60d2f5f8c80de69512bc1c8403fa2',1777969943),('29b9aa4938c67c50a622c734b938eff6',1777969943),('0522a7e2366be4413d97f76835396b3d',1777969943),('1fc31b98d95988036f1265d82d94443b',1777969943),('9fb3936ddfd82677c03070328fec5a13',1777969943),('dfa5043e267b6d4e6bca65f3da905e4d',1777970013),('102516d8594a36513a84a272d4e4ddd5',1777970013),('3d023146ea14d10608434381765b72fb',1777970013),('5cf974c3f4dc873eeef4ab940dd00901',1777970013),('8c8e92a379007037aef8833452206732',1777970013),('5cb621cdb4e423b61b488f360c7aeb61',1777970013),('a6376bb780a9bfa13fa239969341371b',1777970013),('56f417213335e3aea87c3fda1a258c16',1777970013),('3d7554d03150ef7ca93cc5084ee80f07',1777970013),('48e2adb34b8e3f1567c3566dc978e5f5',1777970013),('be58c8046d65990c4f8383deea1c8cc1',1777970013),('75456fbc125168b0a079369592a8686e',1777970013),('4c3f7092cafcbb661c2906ec4232edf8',1777970013),('fc4a44aeec91faea61a7d0b7be8f10b8',1777970013),('8605e94ed499c53bf4dd60c1992a2022',1777970013),('767fc6edfba95f92764fb7d377257d45',1777970013),('cfb19e382c6db95bf7e9f233246431f1',1777970013),('8076b672fb1345bf39b9b07edd32b40a',1777970013),('9f3cf68f11a07f8ba088a4f236891e3b',1777970013),('7406406abe179f72719094f1045cf6d9',1777970014),('ce43ff5f4df6b7cedc28e780fab2fa56',1777970014),('56a83f86b25f952420e41c5601e2a4a5',1777970014),('be797c1fcedafde0f70f611f903e4aa0',1777970014),('f763f10730dd30d93575a245775c9038',1777970014),('44d6d88edd54b0a430dc0bce0cfb3752',1777970014),('588be21c7c7c64adee5be108ad238840',1777970014),('4d71b22d26f97d98ac44061d2db3a786',1777970014),('2c42702811af6779370279d8ad6dd9ea',1777970031),('25a9a5044405195f8bebc8c2ae13b9c9',1777970134),('2d7b09a1f829940c654010cfbd2571c8',1777970271),('a747776f15f165a28a4c68474d893e74',1777970271),('f7ac26c4b002a01d5c9f2658e0282de7',1777970271),('59e840c0e9a346c6c1984a15b2c6a85a',1777970271),('4f2c88970cf881fa9fce9b6fdff03da8',1777970284),('40e19ebc4c657acfcc148a762760389f',1777970284),('acfb3f002e16358895e8017a16c8580f',1777970284),('4a0dd2876e4b4d8ef52039850ae743cd',1777970432),('4754356f5fa8f5a5fab23dcbdf3cd85a',1777970432),('e63e7542a7b2bc00e6b1d26629f38e9d',1777970432),('c36d4634a754465f22b25fe4f3786d77',1777970432),('a76efa0cc1151b1390cefe333945cf57',1777970432),('08caddd2572516d97102ab879775eff2',1777970432),('85eed0e3f0b78709fd9e6e16d3f45ab6',1777970432),('123164501f194322117220c8788dec27',1777970432),('13b19948d4c021bbeaa275c83812db4c',1777970432),('43ef6016ba2aaee42df7d941d1e574fc',1777970432),('f5ecaee1af9ef22e7787e8fbc63470cb',1777970432),('75fcc80ec548332b35540bd84664875c',1777970432),('af4171d9c494304accd36e004ef9d87f',1777970432),('3bbbcaaba0df824b48b99f1d2f10a6dd',1777970432),('473609fb9ba89b0f3587af56d4ccc686',1777970432),('3e4e1c19630bcdef027aa2b4e3a7480d',1777970432),('d744be6d7186825a4f25edc060f0c322',1777970432),('b5d91a3c1fd3173b5a073c79e6e365cb',1777970432),('fe09add69565b5244747b26dddf8b364',1777970432),('da477a2f071e0c4047f7c2ea9dc9b2da',1777970432),('37f3b3e8ca52a81d6c185484909a7a79',1777970432),('bf120e3e0a8ce90d53d52c9c9362638b',1777970432),('4cb0dd4be48922b53d3ec01d53b13580',1777970433),('d3e764cd5600385e25e49755be91e0e1',1777970433),('f69d7bdbe159f08d5cd01a8898d81f36',1777970433),('67a1d2372f45970729de5b280a1a6823',1777970433),('45c968dbd752e3f3ea6ab1b91e11b5ff',1777970433),('ea31288fece35ac59ca805c1e0688a0b',1777970433),('d1d76385801f067b1f56518386bb46fc',1777970433),('6d32af4d29d96acb8b4d8dc7bb068ede',1777970433),('ac4b54b4a931ab64dd03f6a0759af7f9',1777970433),('ab63016abf459a20c32ff622ac86eff5',1777970555),('e91a943d16bbb5bd02959ec6d475c837',1777970625),('9979da6d940386bf090ca4fe86e0b035',1777970669),('907a3ed3145688faa15d36b5646354a8',1777970670),('8272a6d1127ed6398faa269a54443331',1777970670),('97094aff02665497eab31cec30a43596',1777970670),('9942f2ce3b80e50d2b6011d42da84128',1777970670),('30b5cbf7a064773f4e6458e59df19bb3',1777970670),('1ee67067a9f8db93df7593a8584c2178',1777970670),('ba16004d8d4517efee697d3c26b1acde',1777970670),('1efeda39a6d559086b94dd83e8ae25f1',1777970670),('d33606d3da26a4785c4ec0533995f41e',1777970670),('6ad296db324a253d28769901b9940350',1777970670),('88988209a05b79949bd88c89ce34821a',1777970670),('7e554d404d501539748b32a79fc64504',1777970670),('b2cc002d1eb7c0f6101fc6dfddb82836',1777970670),('50b02170b602171a30346cda8d439113',1777970689),('c6a041a1065d1ea8ec5f7f5d956cbfbc',1777970689),('710a09020345e3bf9ef82d570acf274a',1777970689),('8036f046b9809bc7456c51770cd7bcf9',1777970689),('b53975630f54ae900d2a6ecc21d4f952',1777970689),('71f9fbe5aaff48ad6cca30fc9cb18c7d',1777970689),('851e71847629719c6867039c423b2152',1777970689),('8eff72a3d43b0bcff4c1bee1885ec817',1777970689),('dec8fe8871c928ffe1f6ccd197cc27a2',1777970689),('7cd40126f16f5f5c29abee3dedcc0cf5',1777970689),('06a251866da98fca82fd31b03661d030',1777970689),('3336ef061d7a37bac4a39987e5a572c4',1777970689),('461280844fe251c5c72eee49360431e6',1777970689),('4820e6140549ec85d2323b27ffbc7d8a',1777970689),('f1af9423601b5028abd64c0474c2745c',1777970689),('4f6d05f9c54bca0ffc4e3c63506fc634',1777970689),('81ca3f4a446a3c73db5b181aca8f9720',1777970689),('93ed97be8bda214e9515850fdf1f0f2b',1777970689),('017bc051f4a0e076040f3056feabde4e',1777970689),('530703b800ea80501e4969c13bdac0be',1777970689),('740de5b5d3f8df87cf3135778fdf6ff9',1777970689),('caadc1304e5a7805e2c0624d20e85f1c',1777970689),('4d979c05d096a393b3266ff50d01c52b',1777970689),('f5decb7cc5581a692c62ae912d18aa88',1777970718),('f41ae9b03fd5fddb8da865e58aae5f47',1777970718),('8accdfa7374daedcf0b9417dd40aeee2',1777970718),('75be5690ca68972f0c99bd7a4ce66272',1777970718),('056e1d863de346dfa2f0872abff333ea',1777970718),('967e29754ea5f00418409610248fb8fe',1777970718),('5ff399c537c9d0bb337a48a49055d739',1777970835),('70e13483a21265f2cff038d8d459f0ef',1777970835),('7db5f6b3a974464d66e15f521b7a4d8e',1777970835),('ef5d615c8c41ca20fa0d26388a1d1a19',1777970873),('74f62b0c8f3cf501a17654e6072f1786',1777970873),('302ebbf7f5fb5e8e2b74f49bf23c6049',1777970873),('4fc33de39ff4c13945eee54d1dc2f0ff',1777970873),('039b9a753ecf1e695bc720257f0a3685',1777970873),('94563ebf29334ce2015d6ce3e85cb940',1777970873),('205ef65229ab5da9cb7ac7ab12488a7b',1777970884),('7a5ce5a3dc4b662c74163764406cad61',1777970884),('1c3658a20c4bdd1605f6bf4d4af5ea13',1777970884),('359c078682fc7f4c225d19640997f2ce',1777970884),('e902cc9434a22e1e975af335faf1c633',1777970884),('4c2098e4f754d7ba9ea73209cd6607b4',1777970884),('0de35389efc58f7d63e6d422f15c95c8',1777970884),('b182d474c75940f1a2de17ee3be78f5f',1777970884),('b90ded92b390a6ff2a2a1e759d21961f',1777971043),('8e433e8d5b6761d61e7b0c00fcd460ca',1777971138),('35cd889c4bbb9a8dfe20319ed9f589d3',1777971158),('94e09894028546aa78d5d727a5ba52ed',1777971181),('9a60095d1e8c98d710e61b6b0ed4058d',1777971226),('dddd93ccd46c6b2c3c337e8ecba12499',1777971227),('f2f8722269386cbaf37982f06c371a68',1777971227),('94044f09c9c33d4d4210c7f2b7d54f5a',1777971227),('420025997e0f9cc625efd7586ad2db13',1777971227),('4eec2070bfe712d7ed1ba393bcf7f128',1777971227),('0a388f18ea8037164fbc0932c3aedd85',1777971227),('bc3698ab1222eb862c1941c3048a11d6',1777971227),('01e1e336f1daa0c4130ff7f67201ee2c',1777971227),('63b115e52a9d986ba35abd52f0e143d6',1777971227),('37a13f3dfbf0dcf29bf5621538b5fec4',1777971293),('df650955536b9783a444927dc68fe442',1777971293),('c82d5aa0f7858c63bfcb2ca17c883f2c',1777971293),('4adf6ffcbe7cc6331d8623e39f6ddec1',1777971293),('c2750226caf763fbb8b435b7e3636aea',1777971317),('d48786fa6687a8884ff4c9b0ef234c0a',1777971440),('b5de5f5f682fc7640d130311f75e26bb',1777971440),('fc98b2ce28e2f6d85b7d6bd9cdf1b111',1777971440),('8e2906fa65761c2ad1a2c3772e8202b0',1777971440),('8ae4149237c4ff706f388c3e3fc2bc82',1777971440),('072144200773fec1659848194d184c9b',1777971440),('bc6aa02a944affc0e9f78d2cf6a48220',1777971440),('30a676879035b3391235ed2109a8c836',1777972161),('7e108e00144a019b3973ec4670bf03f3',1777972161),('a6263c5f2c9573e22b253cffc93ac1b3',1777972161),('82b6d6e0a4d61a484d1ecb26c1b5f497',1777972161),('9473fdae19cd63833ffbfede01dab87b',1777972161),('1af54fe452b3665346f0f23ee27f6d35',1777972161),('8a027ccfc64e861681b1fbf0ebec49df',1777972503),('ddc3787eb60cd29a408f48de0319ace1',1777972503),('f2aeb054627d1ec22b9603d3628bf49b',1777972531),('81d3f8868f9ab8a78d120cabcccaede1',1777972707),('7fdbff1c96d0fb0974cd009371317464',1777972707),('ed0b2943e98953e4f43851ab17bf4518',1777972707),('b0015f74b8774f29083dc84dd2af060d',1777972707),('41520f77484883aa08075eaee86a2c47',1777972707),('da93bb7b1165883dcdc495548bad2036',1777972707),('0eb587e8aed3e7bd41eb79e52b9c93ba',1777972707),('ae3b5364567c2e3b214cbd5444f7141c',1777972707),('9ddbbc8398912dc1f02eaa3992cccb94',1777972707),('dc4784236e809a7fa3aeeb50d5b16316',1777972707),('9b423c542c82be1c6f542d18a16e37f6',1777972707),('f8f76860e50d4b69396332a994946228',1777972707),('1a1f6d2dbcd5d38254b59b4137096995',1777972707),('9a5f4eae28232802ffd19d3354c927c6',1777972707),('92198de358660e77d0140badb233176a',1777972827),('7613f5a68cf7f1225753b62a7fdb3af9',1777972827),('7371c2dbe38d48afcec12d8572790596',1777972845),('69f058a51e6439dad2f2c4fe50cfbb39',1777972878),('39fb99728ce48de5b74cf5a3d579810a',1777988862),('b1fa33e525949d03853bb69826358b17',1777988869),('8ee2489455ef29e2a90c5aed87784a71',1777988869),('5c0f4579af47a5e2d331de045ce65a4f',1777992343),('befb4a4005422ebe3b2db87d5d0fd26b',1777991467),('5ea03989985a44315fa5c2eb44dc30cd',1777991467),('3c169fd0558ca42a3f069d2693bb9ea8',1777991467),('a5a07434be8a8ac13297d46a84aa0c1b',1777991467),('f1daeb2d55cdd482976fba03eb09cbe2',1777991481),('cebc24e5eda0583e0e5c86534859675e',1777991481),('5c589cfda3709b30a496438de840bd82',1777991481),('8b132e80a91640b1103db8508f5a33e0',1777991481),('9facf0d445d98193b2fac12957dae3b1',1777991489),('45e907d36a139d2d47a3d012e0b589d4',1777991515),('14ce0be2a531a6d3057f50fba861d2c3',1777991515),('3dbfd8226a6559cc7ef33cc6f819f573',1777991551),('6a04fe4da807a1644e36070378e1d19c',1777991628),('a399bc53324c3b25fb146442c9bc9779',1777991628),('622e12a6d67cf29583c1af6b6de8ef58',1777991628),('9b66c4339f457e3468d2ecd30f86b870',1777991628),('41a8950e8700173a5f0ed0bdea1b08b5',1777991660),('f1efb9177573f66430cff6147fae901d',1777992032),('c7869396c90ef495f6c2e043079f4696',1777992032),('2b0b2e11ddba3f20cd2dd81ab6a7fcfa',1777992032),('6af35f11ba2ee53e2abc49a6347a5797',1777992032),('a457f7e98d806e26acd8f1c32bc0b28b',1777992454),('19d315464b8a6dd7f7da1ee1ac994ef3',1777992235),('c382c420625f29435bb27661eca4eeef',1777992235),('0fdeed49b5968d44d0f615575ad15f79',1777992235),('0abb052c7f350a6b4cd9427da164b600',1777992343),('f1a2bd9db8641159c73b144ed23b2995',1777992343),('177e2c6e3dd962399d8063c8ea550424',1777992343),('9ed8868aaf4ca361116faa633a0f9448',1778008054),('4db7e2c6e3d92071055b882a701c95a8',1778007864),('5bfe2580f08c3a5553df9c9d582c6c05',1778007864),('630b0b6916c1b8a727d802ae44aeb9bd',1778007864),('a619858920a07102cb5136c951bf7455',1778007866),('9cdb6cc3b2d8e8497e608205459d062d',1778007892),('b3832e41cf44bef53d5bdace4d88cf25',1778007892),('00ce9354963aa3a59ff5b9c722973485',1778007892),('4128e69b8f6da1f4705959f5784c8d31',1778007892),('2b86d3822eb2adeaf9cf3c2e510ee99b',1778007912),('a50a76e9b83f85deda8597b3dd96424c',1778007952),('4a364efaaf7a586880e1a14d9f3d67fe',1778007952),('39a83593c0ff62099b000c8fd44cd184',1778007952),('c0a0a946aa13a10d52b255cecea1c92c',1778007953),('f22acebd4c470d24273f3ea57147af3a',1778007959),('9acd29ba21e5e4b365db9222f167eb1c',1778007959),('1ae222518ea4c80bb99117d52761f7e6',1778007959),('10aa35a2103d481b1b233f1b83f4999f',1778007960),('c8ce9997f876c7c7978d461fd3ea4494',1778007962),('899adc85e5e66a1cce8faf383a8b29e3',1778007972),('e620e755f332e165e99a6ca766f6cb1e',1778008007),('9b7c9b76f3667419719ac26e78cfc2b3',1778008029),('318e48ded109070561334289ff43b085',1778008029),('a1d28a23222fb7c76ac0f06170e21379',1778008054),('4ca807484c7d56b6fa6e48eddc867c02',1778008054),('c07ae6c0c0a7ce06e066b18901816180',1778008054),('dc6ca9bad228f125fe0427fd6fa92ed6',1778008055),('bf194160c8f063dd70e5633b7315c2fc',1778011278),('332fa28f52a8883bd585a9f518d05b7c',1778008067),('6bb95cca57fe0e6168bc1a6c3e994448',1778008356),('6da408aec2a04b84ee02f935f342c7b9',1778008440),('e3cc6eeee8969ac082c5d94fc6d018c1',1778008440),('cf6db2906aca7633aab5cbc2b359174f',1778008440),('bf09f509968912f913356b95c762e694',1778008440),('1aa324699a6b2e21555410e6ba3152c7',1778008440),('b7162268d8dcc7631f771a721cc04c75',1778008440),('042bee05de02fb763e02e349fe6c108d',1778008440),('e5f9266ba28d2b4adcad4362208b9bdf',1778008440),('d4c56cfbfc53d1444eded2009e86c394',1778008440),('261092fe7ee19bc424035a512a7add2c',1778008440),('6f15fff3e2607525fbf5fc3e62dfb93d',1778008440),('a1ea407afb07c5e115a06fb84194dee6',1778008440),('45c5d1805403f700e4a1a1e9d614eb7d',1778008440),('7b60dd47d8a6bf22001d76e02ccd7700',1778008440),('cec8323ec99dd6f99dffeb4cfe94f4d2',1778008440),('926311f89aa93bb83b7d3f7fb02e6e9a',1778008440),('3bef199e2d13b68c41289536c34f66e2',1778008440),('b26dd8fb97e299849cd65cd396e8beee',1778008440),('adc6984fbb3c3bfb689476cf778e6387',1778008440),('422ea92bab6cd03bace80f59aec68ef1',1778008440),('ec0617ac13a9bb3d2026df61692cecad',1778008440),('6b95fc29b1e62336e2f2dc00d2ffaf7e',1778008440),('1d277b736e329a9d82701e03ffe26719',1778008440),('17d430516603519c81e2105bac562a7f',1778008440),('676efc80cd0f8eddadf4256ede2f4fad',1778008440),('49b62202cf93c6d965f89eb90736efeb',1778008440),('b7af897c5316550acdbd0ab036abb06e',1778008440),('520936201982a3d84385fb44f73cadc5',1778008440),('26414c034b15a0df50bbc74e9598811e',1778008454),('6efc7495f6254c99058eae7727d95f0c',1778008860),('aae642c37b73e66e9a8ac5fccea0e564',1778008893),('7198ba3718e95e838743fb747898b52a',1778008915),('9949190de17a62fd7853b8301612c85d',1778008928),('26d04c9fa94a37075797dd8be8f749f2',1778008928),('8a963a1af66c64689cca053cdaf5231e',1778008928),('3ee025b8012a7ae2fdc3170c1a423294',1778008928),('0f33db7de2fdda7c6edeeeb3a682a757',1778008928),('f86caee2ee32869adcaaf4bc1462aa7b',1778008928),('86797e853c53e048632e11f88e52864e',1778008928),('5a6d1754a6e4207dbb2c82e1a5804d26',1778008928),('8bd6b66a207b68aaff94002a28745a15',1778008928),('c6368643e76a2aada3a6b88a2ea602bd',1778008928),('0d8a26f49fe7d31593b5d0f51046e21f',1778008928),('1a80777f95c94fb3b37d517439cb2056',1778008928),('b252184ab89ca16b5409641cab335289',1778008928),('e01450ec5760c6b92d8482acf910f74a',1778008928),('611490943f87c22e10a45b956ae30d59',1778008938),('cac3365f7dfcc2ef3239c916d9daa2b0',1778008969),('5b3b41932f45bdbf1affdbb88e4dfa26',1778008969),('ae1b87cd7055fde7d33fce09f073f75e',1778008991),('6225f9bbb1341854ed8825774ac8986a',1778008991),('b236f198df45408b59693afd78246ffc',1778008991),('ed26b09115017fe5a38e69c475fd6cae',1778008991),('f70341a3bdc9924f68f984aeea63a0bb',1778008991),('e29ddc0ca1b0a09ac20497706f1d08c7',1778008991),('72d95d49b5ea888da3afb584f1c105a6',1778008991),('e4f4dbe2552a7a8a6a23298cea8307c5',1778008991),('44a6b914cffb219a80d46c6d3ed6dc94',1778008991),('958c0d52b3900261e812ca968fadfe16',1778008991),('057aae111753e8cf8a277231d06cc38c',1778008991),('e342452a144a6b3056d4912b2acd7675',1778008991),('19807ae080ba831612ec87a90d673ff9',1778008991),('3c0dfa22d713035189e97a1482824ff8',1778008991),('4bec7e06734fc2544e58f56b9c7dd588',1778008991),('cc365bdacd1ac5c2a1b7f4006ee5de2d',1778008991),('f8db4fe178ab14723319f2e664c59cf3',1778008991),('2f7ffdc2692f826afe7260976d2131d6',1778008991),('f0bdccb1e2fd5ccb288c2e7ddae1a1ad',1778008991),('b7016c25fd58f28b6910481852b5b936',1778009005),('220cb215da50f833903d24290f2f4706',1778009005),('23a88ae563d3264dfa2bd4234a060423',1778009005),('95144f11c937b44d21161c5df29d1a5d',1778009005),('ec9829a3619f05e55eda471efd6feaa2',1778009005),('dcff466737d8b2001756855493f1b269',1778009005),('319d062bdba1c37e42c9f9c82e61bb56',1778009005),('fbdd87217b48c39c3f5c188d406eaaab',1778009005),('0a6413e07e149a93847787a811dc4f69',1778009005),('68ba53ca29a6e0258e38c24d55bdc1b8',1778009005),('cd6ddc3072c518266b81f0c391dbf40c',1778009005),('2999060fa9552a27073f135c6131bad8',1778009005),('8c2b688d52b208450508aadc4768d483',1778009005),('399f8165e51e3d322ccda40da2f01da6',1778009005),('d18a3eac93afc35e49ac668bbb5e4a96',1778009005),('40519e5db9f127cf55f17b39c3cc8457',1778009005),('0e0790571bca6e4c227c62712299c6bf',1778009005),('90f27bda6e7d2f9eeec9a9b8b6dc02c6',1778009164),('03b6047b9e6ddaf347809f13a30bd4f0',1778009417),('0b30a0d8799129521399746e155f4fc5',1778009417),('2e73b93a32d6963dae0a15c4b1322e7f',1778009417),('d90c4091e6d77cad08b354e0acab1375',1778009417),('4256e298e45c3b38898ddb3ac42a773d',1778009417),('cde17d39f31653386e9cf2f5f367d74b',1778009417),('45c924b8727945e08e38503b6062fe9e',1778009417),('ce41a244656a914133220dbc027e3306',1778009417),('22e3292fa4c7ec7bb23b081503412b0f',1778009417),('a00edd6a4db2525c15d2ea8314ffc986',1778009417),('6344438715521c6d09695951ea08ccfe',1778009417),('e627f138936c4cfe672b46b2cd86f909',1778009417),('5f155ccef4e85cd0b985968b2f37a39b',1778009417),('598236a4a9e2e0cf02026413d22564de',1778009417),('f5caa5819290b4cc6b285046bf26d705',1778009417),('d5a63bae0c51f914e704ca88c525b2aa',1778009417),('827bb79191403ae92fc78e5d8d4546fb',1778009417),('e3cf5228b5c42972e6665e8107d36046',1778009417),('7762c1fe2ae18d51973f5724386a1552',1778009417),('0afc36a098369dd5b358f5c0830f5d8e',1778009417),('4174de3b4abb30ebda64276490e3d39a',1778009417),('ef6584d0d6774b593f510819802d7d12',1778009417),('853e5def7cd5f9bbd1a1b226376003f5',1778009417),('80731d35c44de81273e60ea0674c89ca',1778009458),('bbe552bd97c3e666696ada93ecd8145a',1778009469),('bb09a9ce3b502ca9816bf55a9e50967c',1778009469),('e858e1eb0216ff79524b4ab1b62bc728',1778009469),('f174c10f7e7309a153022190ba8aeb47',1778009469),('ff837021e547d937ca49c95817f3f5d8',1778009469),('4ca9746b02bd236b8c95ee68e1c6eba6',1778009469),('ebd866f22c7c9942016630224abede44',1778009469),('2d7b5966ff129490e9d4594dc56432f7',1778009469),('753093e680e8ba5d73bb791cbaf56e59',1778009469),('b97ea2520b4576ed174cfd97d0dabc68',1778009469),('85ddf0c940ce7e123f5c0e98d992f62a',1778009469),('9d4ed39a3142c12685aeedc7eabaf32f',1778009469),('c8a63539ba863bcf4254e074c0cf3233',1778009469),('0931deff3b4f8c3c8af7ecc59a9e3953',1778009469),('195addb078263877e1d0e7af0e7efcde',1778009469),('5fa63da1e136aed6afe21359f01121de',1778009469),('3a4a6e54dff7c9b03b3be59bc89cdc50',1778009469),('a4e9bc15bd556a35fd42e0a59ed84ede',1778009469),('8963054d097aad49346a98195f566de3',1778009469),('4f05e9a4812d28b6e1b3bee77666a69f',1778009573),('cd44d198ed2639e595b6af13fd6e5dbb',1778009586),('a24b9ab495fa92bad23f6f42a183d1e7',1778009586),('8b75a95cbba81e7ee847a5446ea425ab',1778009586),('c06610b31f538684ea7c25edaee13e60',1778009586),('e5173b8eef83db5a264f6d617bbab070',1778009586),('aa41cecb25c2f689406cd6c430af7273',1778009586),('a493814b7815e8a9d2c3a615ba7b5e91',1778009586),('0b1fb2a636041fc93132c764b40bc754',1778009586),('5bec7c24d4090fc5605122cd0f0f274c',1778009624),('e5ed2ed3fa2bcdd5db67ae3c7d8ada5e',1778009624),('f7476df3b3e1ecd6c8df703ccd24ac4f',1778009624),('310b5d4a891b8e2d3f2b4b0ff9b3693b',1778009624),('cc3d8c6c343de454b2e3373893a9e855',1778009624),('3be41cf6552a656bd2f86da30aac5539',1778009624),('3627fd2b54edfdfccceb6b0a73976ec2',1778009624),('ebd698207ba995931d21f9fc8bf93f12',1778009624),('d863e8ae02464bcb2c77ec4068578161',1778009624),('e0a6c69387898b39bcf20593ad0b8eeb',1778009624),('f17a943db218de13eb31a76e65cb3c26',1778009624),('0dc06c3238b0e84b30532b4ad0ad0cfb',1778009624),('37f75e34b0e833fa4c8818d27ce44641',1778009624),('7332eba2b3a51e122623b4bf1a52fbc7',1778009624),('01e111c2d6a767ede86ae4cecb24256c',1778009624),('86439f3b43785592beede27c9f777638',1778009624),('af59884741221b1d9181ca74aa2c505b',1778009624),('0b193d35a0b5c3d5904ddcc4747be251',1778009624),('d472b66ec6e3f5f110e39598a68da227',1778009624),('403c817acb26beda6b11522b12708bc6',1778009624),('a0913738e56384d53dea7b941e0dacf2',1778009624),('026dbed2fe7dab3e8f18aa6b7448ba7c',1778009624),('951ff7b7affebf75932b7ab9eca3a86e',1778009624),('ab4d4f5c5371e4f20c695c33e0d3ab7d',1778009624),('9e89e6841dde61e28294e30e8a288fc3',1778009624),('593dfa5be3ce7eddefddee33fe4d5d3d',1778009624),('e5376202f67e9822aad6e427e92afcf3',1778009624),('2c6818671c9a3886552bc487f3a01c8d',1778009840),('477e489536468ceafbfbc05b5bcd0ac9',1778009929),('48e3e484ac9a455951989ca3f536e929',1778009929),('b01e0d67c0d74693919aab438702106d',1778009966),('f5832352ad99e0e8828abcc11f438557',1778009966),('640f7bcbff2b28ea772c1a29d59cae7a',1778009966),('53e0ede2a03eb1d18df5aeca7429da65',1778009966),('f11d1a28fa6805eec0bbeed3250c81a8',1778009966),('5aa94a28c84b1430a57c77f1d527c9af',1778009966),('4ca9431d2d64e45ad055996693333313',1778009966),('ef79d18ce6a01fea3b3fc3726c3df244',1778009966),('2d272c25148e3e973465d52c02d719c9',1778009966),('5d9a261f509674eb02a23d90cdccc92d',1778010034),('64271907e67929bb2e876de64df9d719',1778010073),('5f731852efb4ee5d313deb69e22f6cbb',1778010073),('2aec1c211a5140d80146854fade72fcc',1778010124),('300ba3fbe8fa812d15ee1d5999047c49',1778010155),('0379660d1db453c93764fb0bd52628dc',1778010305),('ceb063eddcc2035f006f34068895fd25',1778010321),('9177fd4c1327a69bb44d6f2f77a29579',1778010321),('3e6c8d57eccbf48654922448c4314d11',1778010321),('3ae5566bb1b614bd54b548b00d1afeee',1778010321),('4c0cd81322e3184d8bcb189e28528509',1778010321),('55834e73ceb4051f13875a79b9cdc91d',1778010321),('bdc33c11768eda192e7fb79d854e7d24',1778010321),('753fbf0e861bdb907de32af2497f889c',1778010321),('9d744439181f8b001866ce4f2f6476cc',1778010321),('ce7c59f060cefc0fe8cca51fc66ce840',1778010321),('10d57bf6527fb5bec6b26b66f74df4aa',1778010393),('997d7e0eba15dcbc9035ca06a76c789c',1778010414),('4935891b7cc7dcd96c4f5dca558e70eb',1778010414),('34ab06139c1ab96ad46dc3f8e5cbd30f',1778010414),('4eb8297bb7998f776ee62e3992816b76',1778010414),('27d438ff21e5d79d688f00c3e06c0dcd',1778010414),('998505a7849b82d05245766291811d9f',1778010414),('a4af53ce148e53e8a8388cac6bc46f7f',1778010414),('f85ad8a8108d46ad47b5a42d516ec656',1778010414),('de82888a74ba1c10cb82ea8e2dd32031',1778010414),('c5bc1812485e0f04e4e7ae8427eef12f',1778010414),('74f4b69467c21747e8f788679e3498bc',1778010434),('486d3df22073ab14aa652ac53ec9d9fb',1778010434),('7f4e15dc0cd6836db2f0483863991e2d',1778010434),('6d9f72d60c1cd89f2218ad328527d3e2',1778010451),('c34cd7c2ddedd36495d8df8bc7cc13a2',1778010481),('ed2135d60eae3c7428081ffab4cfe6dd',1778010481),('833f07a187ef4b82dc482c72d8834729',1778010481),('9eab8708afe66c6fb2f8ad0a00ad7092',1778010481),('78e97fd9ee0f585a86212043e21302d6',1778010481),('5bde93b083b405ec1a6c32b5a79483e8',1778010481),('1e01961685eb17596aa6b6c557f55e69',1778010481),('42aa4b03b2ea17f524376c3f170c18bb',1778010481),('14e6d8eb6799c2f2f66315da3b10afb5',1778010481),('328e3cd72ecb9112d9de0d1407cd75fb',1778010481),('06749d40f2697c858e4e9d2b7b5a352b',1778010691),('99951db7d0cc2d7d8097b82b3ee25c5f',1778010726),('d98dd1916c86f61dffe1f3fb804ea7b8',1778010727),('99ab113204de709d3f4848bd41b513e7',1778010727),('b5a949227a098f39e6eebb5799840be3',1778010727),('a9b8921578b07113d78611ea65e9c576',1778010727),('cff95e9878bbbf7e9cc1794e7d932817',1778010727),('110323036b6c570ecf1affbd09181105',1778010727),('b0bf9d6c263c87488bf7bbc953c00d5f',1778010727),('0cf2db7c5404fabe6b064487af295d50',1778010727),('6346388a789a4d2aeef4cd61e33ab38d',1778010727),('64aeb899ec15a4f7dde14a7affde34e6',1778010969),('aca045f5c1d0fa5f51916abcfb0731b4',1778011088),('3e12fa21049d00ac0b79ef71c9423de1',1778011107),('6d179cbcb8d13ccc63bd9a4de9adcb18',1778011292),('4661a9bf0ffe8f886c9be22e12226eac',1778011522),('ff01dbf15dc139064cf926092c57ccd6',1778011522),('a4413288632d95d61957ca0d2fead10a',1778011567),('851b2f386a4c364f7a8ccec5b128be7c',1778011649),('0d0c330dd913497352fd7f8b3e85a504',1778011649),('e02186ae37b57cda452f9bf3044cd0fb',1778011649),('de608c37315fe9deb4d7faf3976a80c5',1778011649),('d7f7d66c1ac5f066f3dd4101e322ed33',1778011649),('a7b11e6acd5caae1990f076359fa4d53',1778011649),('96340e6e43995fb9df401f21fb773f80',1778011649),('dd6d86dcb1e46644a01040d053718098',1778011649),('3c9b8f897364694512733615c490bd9b',1778011649),('c69d84130f57d973f86c66fc27fc0a71',1778011649),('2e3bfde568979952ebca4fdf43733de2',1778011649),('2343aa3eeb83eebc4b6fbff7c929b171',1778011649),('4b571a51421db7c68eb74e7a221e6d63',1778011649),('6da1e11f8f661d30e77f502a3336deef',1778011649),('b96698b502a6a835433b0a696d0f2a39',1778011649),('f76da2df1f806a0c27ab0f1d0b1a9d23',1778011649),('22ab631eca67afc132df52aa572071fb',1778011649),('f4278d82a15381cafa68efb5c1e66979',1778011649),('bd5640d8dbbbd9e2f26b7b6b06a18dbc',1778011649),('efad2dae7980757c2a6ff5387935b495',1778011649),('071cc9a20275eaf6f1393699242de665',1778011649),('606e16641e5cc5c38587d105d5689498',1778011649),('4ff2ebfd48ef7030fdb1cf72721f42f0',1778011649),('fca03eee9eb744472d435d69575ee726',1778011649),('52bfc8b7467e65a5f7b9024aeaa846bb',1778011649),('3494a737b0fcf10eb00562d8f61e05b3',1778011649),('f8f9a9dcb9440429291bd9d7d4cf3a95',1778011649),('4c78fa58c0ad284ef8908605b2d3477a',1778011649),('727d51f6f3f99c723997859ff13203ba',1778011649),('3214ffb08e75e61b32cd1b39df2cad32',1778011649),('a3c6820197345ba9dd5f979f6277966d',1778011649),('b77a47ce7bbd229594d68313b49c5ef1',1778011649),('3e78abb62a8051124650d3985049d3eb',1778011649),('549f2c178af28195b8529608aca73096',1778011649),('b559719f7e62c051d7d1a12136cb67b8',1778011649),('d5c79aafd55acbc0161a01f1e9d69c78',1778011649),('1e52a6bd9ceb7d34b177931c7f3229b1',1778011649),('4d8ebe2123804f57655bffe45bec131c',1778011649),('61447bb1c18209e1c1e2bb8987bf5727',1778011677),('859460d2564e2e55469a9f0fcd0592c1',1778011677),('ee8fb2249a03d0637683007496c38e65',1778011677),('4dd2e1f566c78188802a3bc849cc8828',1778011677),('570f5acd81307ced2789699cfd372795',1778011677),('ef80a373fd5f651ffe7cf87d1333229d',1778011677),('1cac60aa0ec7d74c3b82cab9bb7f9a7b',1778011677),('c322c462ce1f48bd0a5b13d5f11bcfad',1778011753),('0e18f164fa13faff67aa2a6817b1194f',1778011753),('ccaa52d0cea3fcbb31ca10bd928446ed',1778011753),('5418d3bba4e23de11315655cde6d0708',1778011753),('3742c5135cf4696d6d612622d5abb67a',1778011753),('c507eb3bef5bb9c1d4609bfb0c09305f',1778011753),('155fab55161988e67384daa200276661',1778011753),('898abccf50888e59129f54d721960883',1778011753),('41dbe4a049d64d33a969da54c39983ef',1778011753),('21cdb0c38fa1a1b9b318153944acc447',1778011753),('0c9f3d5328d040c177e4f00c624a3b8a',1778011754),('3dab8ac6d4149e54c37768df7d119d41',1778011754),('4b58559e5b388b9f5f6f10149f314d20',1778011754),('5027e9163d2b45ca02d41ab7ba11223c',1778011754),('a1ba528058ff36babe443c4b68e99d08',1778011754),('3df8404070a96b285569c3e1fd6f69cb',1778011754),('e11d0dd760b77ec9a9d1f9fb027367bc',1778011754),('6fbd04e5e1b32aabc4414113c1af831b',1778011754),('8fd57241625f19065b101ef37ba87bdd',1778011754),('a18d1a8d3ba1c5eee81bf2ade2c7e42d',1778011754),('c9c45528d37601b6db3d84027ec046db',1778011754),('e10ead2af33e131ea5166a3208e91f55',1778011754),('52e60f8c18249cad13784c38e0709d91',1778011754),('c3ba4b108676c56f39a50e835bb370de',1778011754),('d49b2abbe12af53ee7a1c6514ca7764d',1778011754);
/*!40000 ALTER TABLE `total_visitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urun`
--

DROP TABLE IF EXISTS `urun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `urun` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `ek_bilgi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `embed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eski_fiyat` decimal(12,2) DEFAULT '0.00',
  `fiyat` decimal(12,2) DEFAULT '0.00',
  `gorsel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int NOT NULL DEFAULT '0',
  `icerik` text COLLATE utf8mb4_unicode_ci,
  `kargo` decimal(12,2) DEFAULT '0.00',
  `kargo_ucret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kat_id` int NOT NULL DEFAULT '0',
  `kdv` decimal(12,2) DEFAULT '0.00',
  `kdv_oran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `spot` text COLLATE utf8mb4_unicode_ci,
  `star_rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stok` int NOT NULL DEFAULT '0',
  `tags` text COLLATE utf8mb4_unicode_ci,
  `urun_kod` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ust_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urun`
--

LOCK TABLES `urun` WRITE;
/*!40000 ALTER TABLE `urun` DISABLE KEYS */;
/*!40000 ALTER TABLE `urun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urun_cat`
--

DROP TABLE IF EXISTS `urun_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `urun_cat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `anasayfa` int NOT NULL DEFAULT '0',
  `anasayfa_grup` int NOT NULL DEFAULT '0',
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `gorsel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grup_sira` int NOT NULL DEFAULT '0',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `sira` int NOT NULL DEFAULT '0',
  `tags` text COLLATE utf8mb4_unicode_ci,
  `ust_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urun_cat`
--

LOCK TABLES `urun_cat` WRITE;
/*!40000 ALTER TABLE `urun_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `urun_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urun_galeri`
--

DROP TABLE IF EXISTS `urun_galeri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `urun_galeri` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sira` int NOT NULL DEFAULT '0',
  `urun_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urun_galeri`
--

LOCK TABLES `urun_galeri` WRITE;
/*!40000 ALTER TABLE `urun_galeri` DISABLE KEYS */;
/*!40000 ALTER TABLE `urun_galeri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urunmodul_ayar`
--

DROP TABLE IF EXISTS `urunmodul_ayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `urunmodul_ayar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `back_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baslik_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spot_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `divider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_weight` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `padding` int NOT NULL DEFAULT '0',
  `tab_back_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tab_font_size` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tab_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `width` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urunmodul_ayar`
--

LOCK TABLES `urunmodul_ayar` WRITE;
/*!40000 ALTER TABLE `urunmodul_ayar` DISABLE KEYS */;
INSERT INTO `urunmodul_ayar` VALUES (1,'f8f8f8',NULL,NULL,'d4af37','600',60,'ffffff','14','333333','Üstün Tur filosu - Mercedes, Iveco, Ford araçlar','filo, araç, mercedes, iveco, sprinter',0);
/*!40000 ALTER TABLE `urunmodul_ayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `varyant`
--

DROP TABLE IF EXISTS `varyant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `varyant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sira` int NOT NULL DEFAULT '0',
  `tur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urun_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `varyant`
--

LOCK TABLES `varyant` WRITE;
/*!40000 ALTER TABLE `varyant` DISABLE KEYS */;
/*!40000 ALTER TABLE `varyant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `varyant_oz`
--

DROP TABLE IF EXISTS `varyant_oz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `varyant_oz` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ozellik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sira` int NOT NULL DEFAULT '0',
  `varyant_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `varyant_oz`
--

LOCK TABLES `varyant_oz` WRITE;
/*!40000 ALTER TABLE `varyant_oz` DISABLE KEYS */;
/*!40000 ALTER TABLE `varyant_oz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `id` int NOT NULL AUTO_INCREMENT,
  `anasayfa` int NOT NULL DEFAULT '0',
  `baslik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `embed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gorsel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int NOT NULL DEFAULT '0',
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `sira` int NOT NULL DEFAULT '0',
  `spot` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (9,1,'Üstün Tur Tanıtım Filmi','tr',1,'<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/dQw4w9WgXcQ\" frameborder=\"0\" allowfullscreen></iframe>','',142,'Üstün Tur tanıtım filmi',1,'Firmamızı yakından tanıyın','tanıtım, kurumsal'),(10,1,'Filomuzdan Görüntüler','tr',1,'<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/dQw4w9WgXcQ\" frameborder=\"0\" allowfullscreen></iframe>','',98,'Filomuzdan görüntüler',2,'150+ araçlık geniş filomuz','filo, araç'),(11,0,'Öğrenci Servis Hizmetimiz','tr',1,'<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/dQw4w9WgXcQ\" frameborder=\"0\" allowfullscreen></iframe>','',76,'Öğrenci servis süreci',3,'Öğrenci servis süreçlerimiz','öğrenci'),(12,0,'Müşteri Yorumları','tr',1,'<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/dQw4w9WgXcQ\" frameborder=\"0\" allowfullscreen></iframe>','',54,'Müşteri yorumları',4,'Müşterilerimizin gerçek yorumları','yorum, memnuniyet');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_ayar`
--

DROP TABLE IF EXISTS `video_ayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video_ayar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `back_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baslik_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spot_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_bg` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `divider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_weight` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `padding` int NOT NULL DEFAULT '0',
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `width` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_ayar`
--

LOCK TABLES `video_ayar` WRITE;
/*!40000 ALTER TABLE `video_ayar` DISABLE KEYS */;
INSERT INTO `video_ayar` VALUES (1,'f5f7fb',NULL,NULL,'3a3296','3a3296','600',60,'Video galerimiz','video, galeri',0);
/*!40000 ALTER TABLE `video_ayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonetici`
--

DROP TABLE IF EXISTS `yonetici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yonetici` (
  `id` int NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass_sifre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_adi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonetici`
--

LOCK TABLES `yonetici` WRITE;
/*!40000 ALTER TABLE `yonetici` DISABLE KEYS */;
INSERT INTO `yonetici` VALUES (1,'','Yönetici','0192023a7bbd73250516f069df18b500','admin');
/*!40000 ALTER TABLE `yonetici` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yorum`
--

DROP TABLE IF EXISTS `yorum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yorum` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durum` int NOT NULL DEFAULT '0',
  `gorsel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icerik` text COLLATE utf8mb4_unicode_ci,
  `isim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pozisyon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sira` int NOT NULL DEFAULT '0',
  `star_rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tarih` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yorum`
--

LOCK TABLES `yorum` WRITE;
/*!40000 ALTER TABLE `yorum` DISABLE KEYS */;
INSERT INTO `yorum` VALUES (1,'tr',1,'','Üstün Tur ile yıllardır çalışıyoruz, çok memnunuz.','Ahmet Yılmaz','İK Müdürü, ABC A.Ş.',1,'5',NULL),(2,'tr',1,'','Şoförleri profesyonel, araçları çok temiz.','Ayşe Demir','Operasyon Müdürü, XYZ Ltd.',2,'5',NULL),(3,'tr',1,'','Öğrencilerimiz için güvenli bir tercih.','Mehmet Kaya','Müdür, Eğitim Kurumu',3,'5',NULL);
/*!40000 ALTER TABLE `yorum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yorum_ayar`
--

DROP TABLE IF EXISTS `yorum_ayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yorum_ayar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `back_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baslik_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spot_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `divider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_weight` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `padding` int NOT NULL DEFAULT '0',
  `width` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yorum_ayar`
--

LOCK TABLES `yorum_ayar` WRITE;
/*!40000 ALTER TABLE `yorum_ayar` DISABLE KEYS */;
INSERT INTO `yorum_ayar` VALUES (1,'f5f7fb','1e293b','64748b','3a3296','600',60,0);
/*!40000 ALTER TABLE `yorum_ayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_ustun'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-05 23:09:14

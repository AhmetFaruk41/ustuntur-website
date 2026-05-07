<?php include 'includes/config/session.php'; ?>
<?php
if ($bakim['durum'] == 1 ) {
    header("Location:$ayar[site_url]bakimdayiz");
}
?>
<!doctype html>
<html lang="tr">
<head>
    <base href="<?php echo"$ayar[site_url]"?>">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo $ayar['site_baslik']?></title>
    <meta name="description" content="<?php echo"$ayar[site_desc]" ?>">
    <meta name="keywords" content="<?php echo"$ayar[site_tags]" ?>">
    <meta name="news_keywords" content="<?php echo"$ayar[site_tags]" ?>">
    <meta name="author" content="<?php echo"$ayar[site_baslik]" ?>" />
    <meta itemprop="author" content="<?php echo"$ayar[site_baslik]" ?>" />
    <meta name="robots" content="index follow">
    <meta name="googlebot" content="index follow">
    <meta property="og:type" content="website" />

    <?php include "includes/config/header_libs.php";?>

</head>
<body>
<?php include 'includes/template/pre-loader.php'?>
<?php include 'includes/template/popup.php'?>
<?php include 'includes/template/header.php'?>
<?php include 'includes/template/modules.php'?>
<?php include 'includes/template/footer.php'?>


</body>
</html>
<?php include "includes/config/footer_libs.php";?>
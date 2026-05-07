<?php echo !defined("GUVENLIK") ? die("Vaoww! Bu ne cesaret?") : null;?>
<?php
$page_header_setting = $db->prepare("select * from page_header where page_id='products_detail' order by id");
$page_header_setting->execute();
$pagehead = $page_header_setting->fetch(PDO::FETCH_ASSOC);
?>
<?php
$productsayar = $db->prepare("select * from urunmodul_ayar where id=:id");
$productsayar->execute(array(
        'id' => 1
));
$prodayar = $productsayar->fetch(PDO::FETCH_ASSOC);
?>
<?php
$id = $_GET['urun_id'];
$urunListele = $db->prepare("select * from urun where id=:id and durum=:durum and dil=:dil");
$urunListele->execute(array(
        'id' => $id,
        'durum' => 1,
        'dil' => $_SESSION['dil']
));
$urun = $urunListele->fetch(PDO::FETCH_ASSOC);
$etiketler = $urun['tags'];
$etiketler = explode(',', $etiketler);
?>
<?php
$product_kat_info = $db->prepare("select * from urun_cat where id=:id and durum=:durum and dil=:dil");
$product_kat_info->execute(array(
        'id' => $urun['kat_id'],
        'durum' => 1,
        'dil' => $_SESSION['dil']
));
$procat = $product_kat_info->fetch(PDO::FETCH_ASSOC);
?>
<?php
$product_ust_kat = $db->prepare("select * from urun_cat where id=:id and durum=:durum and dil=:dil");
$product_ust_kat->execute(array(
    'id' => $procat['ust_id'],
    'durum' => 1,
    'dil' => $_SESSION['dil']
));
$proustcat = $product_ust_kat->fetch(PDO::FETCH_ASSOC);
?>
<?php
$urun_galeri = $db->prepare("select * from urun_galeri where urun_id=:urun_id order by sira asc");
$urun_galeri->execute(array(
        'urun_id' => $urun['id']
));
?>
<?php
$varyantCek = $db->prepare("select * from varyant where urun_id=:urun_id order by sira asc");
$varyantCek->execute(array(
    'urun_id' => $urun['id']
));
$sayi = 1;
?>
<?php
if($urunListele->rowCount() == 0)
{
    header('Location:' . $siteurl . '404');
    exit;
}
?>
<title><?php echo ucwords_tr($urun['baslik']) ?> | <?php echo $ayar['site_baslik']?></title>
<meta name="description" content="<?php echo"$urun[meta_desc]" ?>">
<meta name="keywords" content="<?php echo"$urun[tags]" ?>">
<meta name="news_keywords" content="<?php echo"$urun[tags]" ?>">
<meta name="author" content="<?php echo"$ayar[site_baslik]" ?>" />
<meta itemprop="author" content="<?php echo"$ayar[site_baslik]" ?>" />
<meta name="robots" content="index follow">
<meta name="googlebot" content="index follow">
<meta property="og:type" content="website" />

<?php include "includes/config/header_libs.php";?>

</head>
<body>
<?php include 'includes/template/pre-loader.php'?>
<?php include 'includes/template/header.php'?>


<?php
$page_title = htmlspecialchars($urun['baslik'] ?? '', ENT_QUOTES);
$page_spot  = strip_tags($urun['spot'] ?? '');
$page_crumb = 'Filomuz';
include 'includes/template/page-title.php';
?>


<!-- CONTENT AREA ============== !-->

<div class="product-detail-page-main">



    <div class="product-detail-header">

        <div class="product-detail-header-left">

            <!-- Galeri WEB -->
            <div  class="image-box">
                <div class="large-image"></div>
                <ul class="thumbs">



                    <div class="carousel-gallery">
                        <div class="swiper-container4">
                            <div class="swiper-wrapper">


                                <li class="swiper-slide photo-product activeted">
                                    <a href="javascript:void(0)"><img class="thumb-img" src="images/product/<?=$urun['gorsel']?>" ></a>
                                </li>

                                <?php foreach ($urun_galeri as $galeri) { ?>
                                <li class="swiper-slide photo-product">
                                    <a href="javascript:void(0)"><img class="thumb-img" src="images/product/<?=$galeri['gorsel']?>" ></a>
                                </li>
                                <?php } ?>





                            </div>

                            <?php if ($urun_galeri->rowCount() > 4) {?>
                            <div class="swiper-pagination"></div>
                            <?php } ?>

                        </div>
                    </div>


                </ul>
            </div>
            <!-- Galeri WEB -->

            <!-- Galeri Mobile -->

            <div class="mobile-product-image-box">


                    <div class="swiper-container" id="portfolio" >
                        <div class="swiper-wrapper" >
                            <div class="swiper-slide" >
                                <a href="images/product/<?=$urun['gorsel']?>"><img src="images/product/<?php echo $urun['gorsel'] ?>"></a>
                            </div>
                            <?php
                            $urun_gorsellerCek = $db ->prepare("select * from urun_galeri where urun_id='$urun[id]' order by sira asc");
                            $urun_gorsellerCek->execute();
                            while ($urungorsel = $urun_gorsellerCek->fetch(PDO::FETCH_ASSOC)){
                                ?>
                                <div class="swiper-slide" >
                                    <a href="images/product/<?=$urungorsel['gorsel']?>"><img src="images/product/<?php echo $urungorsel['gorsel'] ?>"></a>
                                </div>
                            <?php } ?>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                    </div>


            </div>

            <!-- Galeri Mobile -->


        </div><div class="product-detail-header-right">


            <div class="product-detail-header-right-baslik">
                <?=$urun['baslik']?>
            </div>


            <?php if($urun['eski_fiyat'] ==!null) {?>
                <div class="product-detail-header-right-eski-fiyat">
                    <?php echo number_format($urun['eski_fiyat'], 2); ?> <span class="font-exlight"><?php echo $odemeayar['simge'] ?></span>
                </div>
            <?php } ?>


            <?php if($urun['fiyat'] ==!null || $urun['fiyat'] == !'0') {?>
                <div class="product-detail-header-right-guncel-fiyat">
                    <?php echo number_format($urun['fiyat'], 2); ?> <span class="font-exlight"><?php echo $odemeayar['simge'] ?></span>
                    <?php if($urun['kdv'] == 1){?><span style="font-size:20px"> + KDV</span><?php }?>
                </div>
            <?php } ?>

            <?php if($prodayar['star_rate'] == 1) {?>
            <div class="product-detail-header-right-star">

                <?php if($urun['star_rate'] == 0){ ?>
                    <span style="color:#CCC">★</span><span style="color:#CCC">★</span><span style="color:#CCC">★</span><span style="color:#CCC">★</span><span style="color:#CCC">★</span>
                <?php }?>
                <?php if($urun['star_rate'] == 1){ ?>
                    <span style="color:#ffb400">★</span><span style="color:#CCC">★</span><span style="color:#CCC">★</span><span style="color:#CCC">★</span><span style="color:#CCC">★</span>
                <?php }?>
                <?php if($urun['star_rate'] == 2){ ?>
                    <span style="color:#ffb400">★</span><span style="color:#ffb400">★</span><span style="color:#CCC">★</span><span style="color:#CCC">★</span><span style="color:#CCC">★</span>
                <?php }?>
                <?php if($urun['star_rate'] == 3){ ?>
                    <span style="color:#ffb400">★</span><span style="color:#ffb400">★</span><span style="color:#ffb400">★</span><span style="color:#CCC">★</span><span style="color:#CCC">★</span>
                <?php }?>
                <?php if($urun['star_rate'] == 4){ ?>
                    <span style="color:#ffb400">★</span><span style="color:#ffb400">★</span><span style="color:#ffb400">★</span><span style="color:#ffb400">★</span><span style="color:#CCC">★</span>
                <?php }?>
                <?php if($urun['star_rate'] == 5){ ?>
                    <span style="color:#ffb400">★</span><span style="color:#ffb400">★</span><span style="color:#ffb400">★</span><span style="color:#ffb400">★</span><span style="color:#ffb400">★</span>
                <?php }?>

            </div>
            <?php }?>


            <?php if($urun['spot'] ==!null) {?>
                <div class="product-detail-header-right-spot">

                    <?=$urun['spot']?>

                </div>
            <?php }?>





            <div class="product-detail-header-right-feature-info">

                <strong><?=$diller['urun-kodu']?></strong> :

                <?=$urun['urun_kod']?>

            </div>




            <div class="product-detail-header-right-feature-info">

                <strong><?=$diller['kategori']?></strong> :

                <?php if($proustcat['id'] == !0) {?>
                    <a href="urun-kategori/<?=$proustcat['id']?>/<?=seo($proustcat['baslik'])?>" style="color:#000;"><?php echo ucwords_tr($proustcat['baslik']) ?></a>
                <?php }?>

                <?php if($proustcat['id'] == !0) {?>
                    <i class="fa fa-caret-right" style="margin: 0 5px 0 5px;"></i>
                    <a href="urun-kategori/<?=$procat['id']?>/<?=seo($procat['baslik'])?>" style="color:#000;"><?php echo ucwords_tr($procat['baslik']) ?></a>
                <?php }?>

                <?php if($proustcat['id'] == 0) {?>
                    <a href="urun-kategori/<?=$procat['id']?>/<?=seo($procat['baslik'])?>" style="color:#000;"><?php echo ucwords_tr($procat['baslik']) ?></a>
                <?php }?>

            </div>



            <?php if($odemeayar['stok_durum'] ==1) { ?>
                <div class="product-detail-header-right-feature-info">

                    <strong><?=$diller['stok-durumu']?></strong> :

                    <?php if($urun['stok'] <= 0) {?>

                        <i class="fa fa-times" style="color:red"></i>
                        <?=$diller['stok-yok']?>

                    <?php } ?>

                    <?php if($urun['stok'] > 0) {?>

                        <i class="fa fa-check" style="color:forestgreen"></i>

                        <?=$diller['stok-mevcut']?>

                        <?php if($odemeayar['stok_gorunum'] ==1) { ?>
                            <strong>[ <?=$urun['stok']?> <?=$diller['stok-adet-yazisi']?> ]</strong>
                        <?php }?>

                    <?php } ?>

                </div>
            <?php } ?>


            <?php if($prodayar['detay_etiket']==1 && $urun['tags'] ==!null){ ?>
                <div class="product-detail-header-right-feature-info">

                    <strong><?=$diller['etiketler']?></strong> :

                    <?php
                    foreach( $etiketler as $anahtar => $deger ){ ?>
                        <div class="product-detail-etiket-box"><?=$deger?></div>
                    <?php } ?>

                </div>
            <?php }?>



            <?php if($urun['kargo'] == 1 && $urun['stok'] > 0 && $odemeayar['kargo_sistemi'] == 1) { ?>
                <div class="product-detail-header-right-feature-info">

                    <div style="padding:0 0 10px 0;">
                    <strong><?=$diller['kargo-ucreti']?></strong> :
                    <strong style="font-size:15px"><?php echo number_format($urun['kargo_ucret'], 2); ?></strong> <?php echo $odemeayar['simge'] ?>
                    </div>
                </div>
            <?php }?>

            <?php if($urun['kargo'] == 0 && $urun['stok'] > 0 && $odemeayar['kargo_sistemi'] == 1) { ?>
                <div class="product-detail-header-right-feature-info" style="border:1px solid #EBEBEB;background-color: #F8F8F8; font-size:13px; display: inline-block; width: auto; padding: 2px 15px 2px 15px ">


                    <strong style="color:#000"><i class="ion-android-car" style="margin-right: 5px"></i><?=$diller['kargo-ucretsiz']?></strong>


                </div>
                <div style="clear: both"></div>
            <?php }?>



            <?php if($urun['stok'] > 0 && $odemeayar['kargo_sistemi'] == 1) { ?>

                <?php if($odemeayar['kargo_limit'] > 0 || $odemeayar['kargo_limit'] == !null) { ?>

                    <div class="product-detail-header-right-limit-kargo">

                        <i class="fa fa-truck"></i>
                        <strong style="font-size:15px"><?php echo number_format($odemeayar['kargo_limit'], 2); ?> <?php echo $odemeayar['simge'] ?></strong> <?=$diller['kargo-limit-aciklamasi']?>

                    </div>

                    <div style="clear: both"></div>

                <?php }?>

            <?php }?>



            <div class="product-detail-header-right-cart-area">

                <form class="product-form" method="post" id="entercancel">

                    <?php if($odemeayar['sepet_sistemi'] == 1 && $urun['stok'] > 0) { ?>

                    <?php foreach ($varyantCek as $varyant) {

                        ?>
                            <div class="cart-varyant-main">
                                <label for="" style="font-size:13px;"><span style="color:red">* </span><?=$varyant['baslik']?></label> <br>
                                <select name="var<?=$sayi++;?>" id="" class="form-control" required style="font-size:14px">
                                    <option value=""><?=$diller['varyant-secin-yazisi']?></option>
                                    <?php
                                    $varyantOzellikCek = $db->prepare("select * from varyant_oz where varyant_id='$varyant[id]' order by sira ASC");
                                    $varyantOzellikCek->execute();
                                    while($varoz = $varyantOzellikCek->fetch(PDO::FETCH_ASSOC))
                                    {
                                    ?>
                                    <option value="<?=$varyant['baslik']?>: <?=$varoz['ozellik']?>"><?=$varoz['ozellik']?></option>
                                    <?php }?>

                                </select>
                            </div>
                    <?php } ?>
                        
                        <div style="clear: both;"></div>

                        <div class="product-detail-header-right-addtocart">
                            <input name="product_code" type="hidden" value="<?php echo $urun["id"]; ?>">
                            <div class="quantity">
                                <input type="number" min="1" max="<?=$urun['stok']?>" step="1" value="1" name="quantity">
                                <button type="submit" class="addToCartBtn">
                                    <i class="fa fa-shopping-bag" style="margin-right: 8px"></i>
                                    <?=$diller['sepete-ekle']?>
                                </button>
                            </div>

                        </div>
                    <?php } ?>





                    <?php if($odemeayar['normal_siparis'] == 1 && $urun['stok'] > 0) {?>
                        <button type="button" class="product-detail-header-right-normal-button" data-toggle="modal" data-target=".siparisModal" style="outline:none; background: #<?=$odemeayar['button_bg']?>; color:#<?=$odemeayar['button_text_color']?>; border:0">
                            <i class="fa fa-shopping-bag" style="margin-right: 8px"></i>
                            <?=$diller['normal-siparis']?>
                        </button>

                    <?php } ?>




                    <?php if($odemeayar['wp_siparis'] == 1 && $urun['stok'] > 0) {?>
                        <a target="_blank" href="https://api.whatsapp.com/send?phone=<?php echo boslukSil($ayar['site_whatsapp']) ?>&text=Merhabalar <?php echo $_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI']; ?> Ürününü Sipariş Etmek İstiyorum." style="color:#FFF; text-decoration: none;">
                            <div class="product-detail-header-right-wp-button">
                                <i class="fa fa-whatsapp"></i>
                                <?=$diller['whatsapp-siparis']?>
                            </div>
                        </a>
                    <?php } ?>


                </form>


            </div>





            <div class="product-detail-header-right-social">

                <a href="https://www.facebook.com/sharer.php?u=<?=$ayar['site_url']?>urun/<?=$urun['id']?>/<?=seo($urun['baslik'])?>" onClick="return popup(this, 'notes')"  ><i aria-hidden="true" data-toggle="tooltip" data-placement="bottom" title="<?=$diller['paylas']?>" class="fa fa-facebook"></i></a>

                <a href="https://twitter.com/intent/tweet?url=<?=$ayar['site_url']?>urun/<?=$urun['id']?>/<?=seo($urun['baslik'])?>" onClick="return popup(this, 'notes')" ><i class="fa fa-twitter" data-toggle="tooltip" data-placement="bottom" title="<?=$diller['paylas']?>"></i></a>

                <a href="http://www.linkedin.com/shareArticle?mini=true&url=<?=$ayar['site_url']?>urun/<?=$urun['id']?>/<?=seo($urun['baslik'])?>" onClick="return popup(this, 'notes')"><i class="fa fa-linkedin" data-toggle="tooltip" data-placement="bottom" title="<?=$diller['paylas']?>"></i></a>

                <a href="https://www.pinterest.com/pin/create/button/?url=<?=$ayar['site_url']?>urun/<?=$urun['id']?>/<?=seo($urun['baslik'])?>&media=<?=$ayar['site_url']?>images/product/<?=$urun['gorsel']?>&description=<?=$urun['baslik']?>"  onClick="return popup(this, 'notes')"><i class="fa fa-pinterest-p" data-toggle="tooltip" data-placement="bottom" title="<?=$diller['paylas']?>"></i></a>

                <a href="https://api.whatsapp.com/send?text=<?=$urun['baslik']?> <?=$ayar['site_url']?>urun/<?=$urun['id']?>/<?=seo($urun['baslik'])?>" target="_blank"><i class="fa fa-whatsapp" data-toggle="tooltip" data-placement="bottom" title="<?=$diller['paylas']?>"></i></a>


            </div>







        </div>

    </div>






    <div class="product-detail-content-area">



        <div id="tab-products" >

            <?php if($urun['icerik'] == !null || $urun['ek_bilgi'] ==!null || $urun['embed']) { ?>
                <ul class='products_tab_ul'>


                    <?php if($urun['icerik'] == !null) {?>
                        <li>
                            <a href="#info">
                                <?php echo $diller['urun-detay-aciklama'] ?>
                            </a>
                        </li>
                    <?php } ?>


                    <?php if($urun['ek_bilgi'] == !null) {?>
                        <li>
                            <a href="#map">
                                <?php echo $diller['urun-detay-ekbilgi'] ?>
                            </a>
                        </li>
                    <?php } ?>

                    <?php if($urun['embed'] == !null) {?>
                        <li>
                            <a href="#gallery">
                                <i class="fa fa-video-camera"></i>
                                <?php echo $diller['urun-detay-video'] ?>
                            </a>
                        </li>
                    <?php } ?>


                </ul>
            <?php }?>



            <div id="info" class="products_tabs_contents" >

                <?php
                $icerik  = $urun['icerik'];
                $eski   = "../images";
                $yeni   = "images";
                $icerik = str_replace($eski, $yeni, $icerik);
                ?>
                <?=$icerik?>

            </div>

            <div id="map" class="products_tabs_contents" >

                <?php
                $ek_bilgi  = $urun['ek_bilgi'];
                $eski   = "../images";
                $yeni   = "images";
                $ek_bilgi = str_replace($eski, $yeni, $ek_bilgi);
                ?>
                <?=$ek_bilgi?>

            </div>

            <div id="gallery" class="products_tabs_contents"  style="text-align: center" >

                <?=$urun['embed']?>

            </div>




        </div>




    </div>













    <!-- TİCARET BİLGİLENDİRME ALANI ========================== !-->
    <?php
    $commerceinfo = $db->prepare("select * from ticaret_bilgi where dil='$_SESSION[dil]' order by sira asc limit 4");
    $commerceinfo->execute();
    ?>
    <?php
    if($ayar['ticaret_text_urun'] == 1)
    {
        ?>
        <style>
            .ticaret-bilgilendirme-box{border-color:#<?php echo $ayar['ticaret_text_border'] ?>}
        </style>
        <?php if($commerceinfo->rowCount() > 0) { ?>
        <div class="ticaret-bilgilendirme-main-div" style="border:1px solid #<?php echo $ayar['ticaret_text_border'] ?>; background-color: #<?php echo $ayar['ticaret_text_back'] ?>">

            <?php foreach ($commerceinfo as $tic){ ?>
                <div class="ticaret-bilgilendirme-box"style="border-right: 1px solid #<?php echo $ayar['ticaret_text_border'] ?>">
                    <div class="ticaret-bilgilendirme-box-i" style="color:#<?php echo $ayar['ticaret_text_icon']?>">
                        <i class="fa <?php echo $tic['icon']?>"></i>
                    </div>
                    <div class="ticaret-bilgilendirme-box-text font-open-sans font-14 font-light" style="color:#<?php echo $ayar['ticaret_text_color']?>" >
                        <?php echo $tic['baslik']?>
                    </div>
                </div>
            <?php }?>

        </div>
    <?php } else {?>

        <div class="ticaret-bilgilendirme-main-div" style="border:1px solid #000; background-color: #333">
            <div class="ticaret-bilgilendirme-box" style="color:#FFF;">

                <span class="font-16 font-bold font-open-sans">HENÜZ TİCARET BİLGİ KUTULARI EKLENMEMİŞ</span>
                <br>
                <span class="font-14 font-small font-open-sans">Lütfen yeni ticaret bilgi kutuları ekleyerek ziyaretçilerinizi bilgilendirme şansını yakalayın</span>
            </div>
        </div>

    <?php }?>
    <?php }?>

    <!-- TİCARET BİLGİLENDİRME ALANI ========================== !-->








    <?php
    $urun_listele = $db->query("SELECT * FROM urun WHERE durum='1' and dil='$_SESSION[dil]' and kat_id IN (
                                                              SELECT id FROM urun_cat  WHERE id = $urun[kat_id] OR ust_id = $urun[kat_id]) order by id desc limit 4");
    $UrunAl = $urun_listele->fetchAll(PDO::FETCH_ASSOC);
    ?>


    <?php if($prodayar['detay_benzer_urun'] == 1 && $urun_listele->rowCount() > 1 ) {?>



        <!-- BENZER ÜRÜNLER ============================================== !-->

        <div class="related-products-div">

            <div class="modules-header-main">
                <div class="modules-header-main-head" style="background:url(images/divider.png) no-repeat center bottom;">
                    <div class="modules-header-main-baslik font-open-sans font-medium font-spacing" style="color:#000; font-size:22px">
                        <?php echo $diller['benzer-urunler']?>
                    </div>
                </div>
            </div>




            <?php foreach($UrunAl as $urunbenzer){

                if($urunbenzer['stok'] > 0) {

                $pro_list_cat = $db->prepare("select * from urun_cat where id='$urunbenzer[kat_id]' and durum='1' and dil='$_SESSION[dil]' order by id desc limit 1 ");
                $pro_list_cat->execute();
                $pro_cat = $pro_list_cat->fetch(PDO::FETCH_ASSOC);

                ?>

                <?php if($urun['id'] <> $urunbenzer['id'] ) { ?>



                    <div class="product-main-box">
                        <div class="product-main-box-in">
                            <div class="product-main-box-img">

                                <img src="images/product/<?php echo $urunbenzer['gorsel'] ?>" alt="<?php echo $urunbenzer['baslik'] ?>">
                                <a href="urun/<?php echo $urunbenzer['id'] ?>/<?php echo seo($urunbenzer['baslik']) ?>"><div class="ovrly"></div></a>
                                <div class="buttons">
                                    <a href="urun/<?php echo $urunbenzer['id'] ?>/<?php echo seo($urunbenzer['baslik']) ?>" class="text" style="color:#<?php echo $prodayar['incele_button_color']?>;"><i class="fa fa-search" style="color:#<?php echo $prodayar['incele_button_color']?>"></i> <?php echo $diller['incele'] ?></a>
                                </div>

                            </div>
                            <div class="product-main-box-baslik">
                                <div class="product-main-box-baslik-in">
                                    <a href="urun/<?php echo $urunbenzer['id'] ?>/<?php echo seo($urunbenzer['baslik']) ?>"><?php echo $urunbenzer['baslik'] ?></a>
                                </div>
                            </div>
                            <div class="product-main-box-category">
                                <?php echo $pro_cat['baslik'] ?>
                            </div>
                    <?php if($prodayar['star_rate'] == 1) {?>
                            <div class="product-main-box-rate">

                                <?php if($urunbenzer['star_rate'] == 0){ ?>
                                    <span style="color:#CCC">★</span><span style="color:#CCC">★</span><span style="color:#CCC">★</span><span style="color:#CCC">★</span><span style="color:#CCC">★</span>
                                <?php }?>
                                <?php if($urunbenzer['star_rate'] == 1){ ?>
                                    <span style="color:#ffb400">★</span><span style="color:#CCC">★</span><span style="color:#CCC">★</span><span style="color:#CCC">★</span><span style="color:#CCC">★</span>
                                <?php }?>
                                <?php if($urunbenzer['star_rate'] == 2){ ?>
                                    <span style="color:#ffb400">★</span><span style="color:#ffb400">★</span><span style="color:#CCC">★</span><span style="color:#CCC">★</span><span style="color:#CCC">★</span>
                                <?php }?>
                                <?php if($urunbenzer['star_rate'] == 3){ ?>
                                    <span style="color:#ffb400">★</span><span style="color:#ffb400">★</span><span style="color:#ffb400">★</span><span style="color:#CCC">★</span><span style="color:#CCC">★</span>
                                <?php }?>
                                <?php if($urunbenzer['star_rate'] == 4){ ?>
                                    <span style="color:#ffb400">★</span><span style="color:#ffb400">★</span><span style="color:#ffb400">★</span><span style="color:#ffb400">★</span><span style="color:#CCC">★</span>
                                <?php }?>
                                <?php if($urunbenzer['star_rate'] == 5){ ?>
                                    <span style="color:#ffb400">★</span><span style="color:#ffb400">★</span><span style="color:#ffb400">★</span><span style="color:#ffb400">★</span><span style="color:#ffb400">★</span>
                                <?php }?>

                            </div>
                        <?php }?>
                            <div class="product-main-box-price">


                                <?php
                                if($urunbenzer['eski_fiyat']== null)
                                {
                                } else { ?>

                                    <span style="font-size:15px; font-weight: 400; font-family: 'Open Sans', Arial; color:#999; display: inline-block; text-decoration: line-through;"><?php echo number_format($urunbenzer['eski_fiyat'], 2); ?> <span class="font-exlight"><?php echo $odemeayar['simge'] ?></span></span>

                                <?php }?>


                                <?php
                                if($urunbenzer['fiyat']== null || $urunbenzer['fiyat'] =='0')
                                {
                                } else { ?>

                                    <h1><?php echo number_format($urunbenzer['fiyat'], 2); ?> <span class="font-exlight"><?php echo $odemeayar['simge'] ?></span></h1>

                                <?php }?>
                            </div>
                        </div>
                    </div>


                <?php }?>

            <?php } ?>

            <?php } ?>





        </div>
        <!-- BENZER ÜRÜNLER ============================================== !-->
    <?php }?>





</div>

<!-- CONTENT AREA ============== !-->

<script>
    $.fn.thumbs = function () {

        var src = $(this).find('.thumb-img').attr('src');
        $(this).closest('.image-box').find('.large-image').
        css('background-image', 'url(' + src + ')');


        $(this).find('.thumb-img').click(function () {
            var src = $(this).attr('src');
            $(this).closest('.image-box').find('.large-image').
            css('background-image', 'url(' + src + ')');
        });



    };

    $.fn.zoom = function () {

        $(this).hover(function () {
            $(this).mousemove(function (e) {
                var x = e.pageX - $(this).offset().left;
                var y = e.pageY - $(this).offset().top;

                var xPerc = x * 100 / $(this).width();
                var yPerc = y * 100 / $(this).height();

                $(this).css({
                    'background-position': xPerc + '% ' + yPerc + '%',
                    'background-size': '150%' });

            });
        }, function () {
            $(this).css({
                'background-position': 'center',
                'background-size': 'contain' });

        });

    };

    $('.thumbs').thumbs();
    $('.large-image').zoom();


    $(".photo-product").click(function(){
        $(this).addClass('activeted')
        $(this).siblings().removeClass('activeted')
    })


</script>




<script>
    $(function () {

        var swiper = new Swiper('.carousel-gallery .swiper-container4', {
            effect: 'slide',
            speed: 500,
            slidesPerView: 5,
            spaceBetween: 5,
            simulateTouch: true,
            autoplay: {
                delay: 5000,
                stopOnLastSlide: true,
                disableOnInteraction: true },

            pagination: {
                el: '.carousel-gallery .swiper-pagination',
                clickable: true },

            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev' },

            breakpoints: {
                // when window width is <= 320px
                320: {
                    slidesPerView: 5,
                    spaceBetween: 5 },

                // when window width is <= 480px
                425: {
                    slidesPerView: 5,
                    spaceBetween: 10 },

                // when window width is <= 640px
                768: {
                    slidesPerView: 5,
                    spaceBetween: 20 } } });


        /*http://idangero.us/swiper/api/*/



    });
    //# sourceURL=pen.js
</script>






<script>
    $('#entercancel').on('keyup keypress', function(e) {
        var keyCode = e.keyCode || e.which;
        if (keyCode === 13) {
            e.preventDefault();
            return false;
        }
    });
</script>
<!-- JAvascript Sepete Ekle Eklentileri Enter İptal !-->

<!-- Modal -->
<div class="modal fade siparisModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">

        <form method="post" action="includes/post/siparispost.php">

            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"><?=$diller['normal-siparis']?></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">





                <div class="form-row">

                    <div class="form-group col-md-6">
                        <label for="inputProductName"><?=$diller['siparis-urun']?></label>
                        <input type="text" name="product" class="form-control"  id="inputProductName" readonly value="<?=$urun['baslik']?> / <?=$urun['urun_kod']?>"  >
                    </div>

                    <div class="form-group col-md-6 ">
                        <label for="inputnName"><?=$diller['isim-soyisim']?></label>
                        <input type="text" name="isim" class="form-control" id="inputnName"  required >
                    </div>

                </div>


                    <div class="form-row">

                        <div class="form-group col-md-6">
                            <label for="inputMail"><?=$diller['siparis-eposta']?></label>
                            <input type="email" name="eposta" class="form-control"  id="inputMail" required  >
                        </div>

                        <div class="form-group col-md-6 ">
                            <label for="inputPhone"><?=$diller['siparis-tel']?></label>
                            <input type="number" name="tel" class="form-control" id="inputPhone"  required >
                        </div>

                    </div>


                <input type="hidden" name="siparis_id" value="<?=$urun['id']?>">
                <input type="hidden" name="backurl" value="urun/<?=$urun['id']?>/<?=seo($urun['baslik'])?>">

                    <div class="form-row">

                        <div class="form-group col-md-6">
                            <label for="inputSehir"><?=$diller['siparis-sehir']?></label>
                            <input type="text" name="sehir" class="form-control"  id="inputSehir" required  >
                        </div>

                        <div class="form-group col-md-6 ">
                            <label for="inputPostaKodu"><?=$diller['siparis-postakodu']?></label>
                            <input type="text" name="postakodu" class="form-control" id="inputPostaKodu"  required >
                        </div>

                    </div>

                    <div class="form-row">

                        <div class="form-group col-md-12">
                            <label for="inputAdres"><?=$diller['siparis-adres']?></label>
                            <input type="text" name="adres" class="form-control"  id="inputAdres" required  >
                        </div>

                    </div>

                    <div class="form-row">

                        <div class="form-group col-md-12">
                            <label for="textareaNot"><?=$diller['siparis-not']?></label>
                            <textarea class="form-control" id="textareaNot" rows="3"  name="notlar" required></textarea>
                        </div>

                    </div>
                <?php
                if($ayar['site_captcha'] == 1)
                {
                    ?>
                    <!-- GÜVENLİK CAPTCHA ========== !-->
                    <div class="form-row">

                        <?php $kod=$_SESSION['secure_code'];?>



                        <div class="form-group col-md-4 ">
                            <label for="inputCaptcha"><?=$diller['guvenlik-kodu']?></label>
                            <div class="input-group mb-2 mr-sm-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text"><img src='includes/template/captcha.php'/></div>
                                </div>
                                <input type="text" class="form-control form-captcha-height" id="inputCaptcha"   name="secure_code" maxlength="5" required >
                            </div>
                        </div>

                    </div>
                    <!-- GÜVENLİK CAPTCHA ========== !-->
                <?php }?>






            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal"><?=$diller['modal-kapat']?></button>

                <button type="submit" name="siparisgonder" class="btn btn-danger" ><?=$diller['normal-siparis-gonder']?></button>

            </div>

            </form>



        </div>
    </div>
</div>
<!-- Modal -->






<?php if($_GET['status']=='success'){ ?>
    <script>
        $(document).ready(function () {
            swal({
                title: "<?=$diller['normal-siparis-basarili']?>",
                text: "<?=$diller['normal-siparis-basarili-aciklamasi']?>",
                type: "success",
                showConfirmButton: true,
                confirmButtonText:"<?=$diller['button-tamam']?>",
            });
        });


    </script>
    <meta http-equiv="refresh" content="3; URL=<?=$siteurl?>urun/<?=$id?>/<?=seo($urun['baslik'])?>">
<?php }?>
<?php if($_GET['status']=='warning'){ ?>
    <script>
        $(document).ready(function () {
            swal({
                title: "<?=$diller['post-hata']?>",
                text: "<?=$diller['post-guvenlik-kod-hata']?>",
                type: "warning",
                showConfirmButton: true,
                confirmButtonText:"<?=$diller['button-tamam']?>",
            });
        });
    </script>
    <meta http-equiv="refresh" content="3; URL=<?=$siteurl?>urun/<?=$id?>/<?=seo($urun['baslik'])?>">
<?php }?>
<?php if($_GET['status']=='critical'){ ?>
    <script>
        $(document).ready(function () {
            swal({
                title: "KRİTİK HATA!",
                text: "SMTP Ayarlarınız hatalı! Başvuru sisteme girildi ancak bildirim gönderilemedi.",
                type: "warning",
                timer: '3500',
                showConfirmButton: true,
                confirmButtonText:"<?=$diller['button-tamam']?>",
            });
        });
    </script>
    <meta http-equiv="refresh" content="3; URL=<?=$siteurl?>urun/<?=$id?>/<?=seo($urun['baslik'])?>">
<?php }?>
<?php if(isset($_SESSION['normalsiparisArray']) && $_SESSION['normalsiparisArray']['status'] == 'error'){ ?>
    <script>
        $(document).ready(function () {
            swal({
                title: "<?=$diller['post-hata']?>",
                text: "<?=$diller['form-eksik-alan']?>",
                type: "warning",
                timer: '3500',
                showConfirmButton: true,
                confirmButtonText:"<?=$diller['button-tamam']?>",
            });
        });
    </script>
    <meta http-equiv="refresh" content="3; URL=<?=$siteurl?>urun/<?=$id?>/<?=seo($urun['baslik'])?>">
    <?php unset($_SESSION['normalsiparisArray']); ?>
<?php }?>




<?php include 'includes/template/footer.php'?>
</body>
</html>
<?php include "includes/config/footer_libs.php";?>


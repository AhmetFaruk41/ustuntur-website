<?php echo !defined("GUVENLIK") ? die("Vaoww! Bu ne cesaret?") : null;?>
<?php //** Cart Calc */
include "includes/func/calc.php";
?>
<?php
$page_header_setting = $db->prepare("select * from page_header where page_id='cart' order by id");
$page_header_setting->execute();
$pagehead = $page_header_setting->fetch(PDO::FETCH_ASSOC);
?>
<title><?php echo ucwords_tr($diller['sepetiniz']) ?> | <?php echo $ayar['site_baslik']?></title>
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
<?php include 'includes/template/header.php'?>


<!-- Page Header ====================== !-->
<style>
    .page-headers-main{width:<?php if($pagehead['width']==1){?> 90%; <?php }else {?> 100% <?php }?> ;  padding:<?php echo $pagehead['padding'] ?>px 0 <?php echo $pagehead['padding'] ?>px 0 ; border:1px solid #<?php echo $pagehead['border_color'] ?>;

    <?php if($pagehead['shadow'] == 1 ) {?>

        -webkit-box-shadow: inset 0px 5px 10px -7px rgba(0,0,0,0.1);
        -moz-box-shadow: inset 0px 5px 10px -7px rgba(0,0,0,0.1);
        box-shadow: inset 0px 5px 10px -7px rgba(0,0,0,0.1);

    <?php } ?>

    <?php if($pagehead['tip'] == 0 ) {?>

        background:#<?php echo $pagehead['bg_color'] ?> ;

    <?php } ?>

    <?php if($pagehead['tip'] == 1 ) {?>

        background:url(images/uploads/<?php echo $pagehead['bg_image'] ?>) ;

        box-shadow: inset 5000px 0 0 0 rgba(0, 0, 0, 0.7); border-color: rgba(0, 0, 0, 1);

    <?php } ?>

    }
</style>
<style>
    input[type="text"]:disabled {
        background: #FFF;
    }
</style>
<div class="page-headers-main">
    <div class="page-headers-main-in">
        <div class="page-headers-main-left font-raleway font-18 font-small font-spacing" style="color:#<?php echo $pagehead['text_color'] ?>;">

            <i class="fa fa-shopping-basket"></i>
            <?php echo ucwords_tr($diller['sepetiniz']) ?>

        </div><div class="page-headers-main-right font-raleway font-12 font-spacing">

            <span style="color:#<?php echo $pagehead['pasif_text_color'] ?>; padding-right: 15px;"><?php echo $diller['buradasiniz'] ?>:</span>
            <a href="index.html" style="color:#<?php echo $pagehead['text_color'] ?>;"><span style="padding-right: 15px; font-weight: 600"><?php echo $diller['anasayfa'] ?></span></a>
            <span style="color:#<?php echo $pagehead['pasif_text_color'] ?>; padding-right: 15px;">/</span>
            <span style="padding-right: 15px; color:#<?php echo $pagehead['text_color'] ?>;"><?php echo ucwords_tr($diller['sepetiniz']) ?></span>
        </div>
    </div>
</div>
<!-- Page Header ====================== !-->



<!-- CONTENT AREA ============== !-->

<div class="cart-page-main">


    <?php
    if(isset($_SESSION["shopping_cart"]) && count($_SESSION["shopping_cart"])>0) {
        ?>

        <?php if ($odemeayar['sepet_step'] == 1 ){ ?>
            <!-- STEP-STEP ============================== !-->
            <div class="step-div-main">


                <div class="step-box">
                    <span><?=$diller['sepetiniz']?></span><br><br>
                    <div style="clear: both"></div>
                    <div class="step-line step-line-none"></div><div class="step-num step-num-active"> 1 </div><div class="step-line step-line-active"></div>
                </div><div class="step-box">
                    <span style="font-weight: 400"><?=$diller['teslimat-ve-odeme']?></span><br><br>
                    <div style="clear: both"></div>
                    <div class="step-line"></div><div class="step-num">2</div><div class="step-line"></div>
                </div><div class="step-box">
                    <span style="font-weight: 400"><?=$diller['odeme-bilgileri']?></span><br><br>
                    <div style="clear: both"></div>
                    <div class="step-line"></div><div class="step-num">3</div><div class="step-line step-line-none"></div>
                </div>


            </div>
            <!-- STEP-STEP ============================== !-->
        <?php }?>


        <div class="cart-div">

            <div class="cart-left-div">





                <div class="cart-left-box-main font-medium">

                    <div class="cart-left-box-1">

                    </div><div class="cart-left-box-2">

                        <?=$diller['sepet-urun']?>

                    </div><div class="cart-left-box-3">

                        <?=$diller['sepet-birim-fiyat']?>

                    </div><div class="cart-left-box-4">

                        <span style="padding: 0 0 0 28px"> <?=$diller['sepet-adet']?></span>

                    </div><div class="cart-left-box-5">

                        <?=$diller['sepet-toplam-1']?>

                    </div>

                </div>


                <?php
                $total = 0;
                foreach($_SESSION["shopping_cart"] as $product){
                    $sayi = 1;

                    $uruncek = $db ->prepare("select * from urun where id=:id order by id desc limit 1");
                    $uruncek->execute(array(
                            'id' => $product['item_id']
                    ));
                    $urun = $uruncek->fetch(PDO::FETCH_ASSOC);

                    $varyantlar = $db->prepare("select * from varyant where urun_id=:urun_id ");
                    $varyantlar->execute(array(
                            'urun_id' => $product['item_id']
                    ));

                    ?>
                    <div class="cart-left-box-main">

                        <div class="cart-left-box-1">

                            <a href="urun/<?=$urun['id']?>/<?=seo($urun['baslik'])?>" target="_blank">
                                <img src="images/product/<?=$urun['gorsel']?>" alt="<?=$urun['baslik']?>">
                            </a>

                        </div><div class="cart-left-box-2">

                            <div class="cart-left-box-2-txt">

                                <a href="urun/<?=$urun['id']?>/<?=seo($urun['baslik'])?>" target="_blank">
                                    <?=$urun['baslik']?>
                                </a>
                                <?php
                                if($varyantlar->rowCount()>0) {

                                    $metin = $product['var'];
                                    $sonuc = str_replace(',', '<span style="padding-left:5px; padding-right: 5px">-</span>', $metin);

                                    ?>
                                    <br>
                                    <span style="font-size:13px; font-weight: 600;"><?=$sonuc?></span>
                                <?php } ?>
                            </div>

                            <?php if ($urun['kdv'] == 1) {

                                $kdvtutar = $urun['fiyat'] * $urun['kdv_oran'] / 100;

                                $toplamkdvtutar_item = $urun['fiyat'] * $urun['kdv_oran'] / 100 * $product['item_quantity'];

                                ?>

                                <div class="cart-left-box-2-other-info">%<?=$urun['kdv_oran']?> <?=$diller['kdv']?> : <?php echo number_format($kdvtutar, 2); ?> TL</div>

                            <?php }?>



                        </div><div class="cart-left-box-3">

                            <strong><?php echo number_format($urun['fiyat'], 2); ?> <span class="font-exlight"><?php echo $odemeayar['simge'] ?></span></strong>

                        </div><div class="cart-left-box-4">

                            <a href="#" class="btn btn-sm btn-light minus-quantity" style="border-color:#CCC;" data-code="<?php echo $product['group_id']; ?>">-</a>
                            <input type="text"  value="<?=$product['item_quantity']?>" class="form-control btn-sm " style="width:50px; height: 31px;  text-align: center; display: inline-block;vertical-align: top; " disabled>
                            <a href="#" class="btn btn-sm  btn-light plus-quantity" style="border-color:#CCC;" data-code="<?php echo $product['group_id']; ?>">+</a>

                        </div><div class="cart-left-box-5">

                            <?php
                            $adetlifiyat = $urun['fiyat'] * $product['item_quantity'];
                            ?>

                            <strong><?php echo number_format($adetlifiyat, 2); ?> <span class="font-exlight"><?php echo $odemeayar['simge'] ?></span></strong>

                        </div><div class="cart-left-box-6">

                            <a class="btn btn-danger btn-sm remove-item" href="#" data-code="<?php echo $product['group_id']; ?>">X</a>

                        </div>

                    </div>



                    <?php




                    ?>

                <?php }?>

                <div class="cart-left-function">

                    <div class="cart-left-functions-right">

                        <a href="urunler">
                            <div class="cart-func-continue"><?=$diller['alisverise-devam']?></div>
                        </a>

                    </div>

                </div>





            </div><div class="cart-right-div">

                <div class="cart-right-div-inside">


                    <div class="cart-right-div-head">

                        <?=$diller['sepet-toplam-2']?>

                    </div>


                    <div class="cart-right-div-price-box">

                        <div class="cart-right-div-price-box-left">

                            <?=$diller['ara-toplam']?>

                        </div><div class="cart-right-div-price-box-right">

                            <?php echo number_format($aratoplam, 2); ?> <span class="font-exlight"><?php echo $odemeayar['simge'] ?></span>

                        </div>

                    </div>


                    <?php if($kdvtoplam >0) {?>

                        <div class="cart-right-div-price-box">

                            <div class="cart-right-div-price-box-left">

                                <?=$diller['kdv']?>

                            </div><div class="cart-right-div-price-box-right">

                                <?php echo number_format($kdvtoplam, 2); ?> <span class="font-exlight"><?php echo $odemeayar['simge'] ?></span>

                            </div>

                        </div>
                    <?php }?>


                    <?php if($kargotoplam >0 && $odemeayar['kargo_sistemi'] == 1 ) {?>
                        <div class="cart-right-div-price-box">

                            <div class="cart-right-div-price-box-left">

                                <?=$diller['kargo-bedeli']?>

                            </div><div class="cart-right-div-price-box-right">

                                <?php echo number_format($kargotoplam, 2); ?> <span class="font-exlight"><?php echo $odemeayar['simge'] ?></span>

                            </div>

                        </div>
                    <?php }?>


                    <div class="cart-right-div-price-box">

                        <div class="cart-right-div-price-box-left">

                            <?=$diller['sepet-toplam-1']?>

                        </div><div class="cart-right-div-price-box-right font-18">

                            <?php echo number_format($odenecektoplam, 2); ?> <span class="font-exlight"><?php echo $odemeayar['simge'] ?></span>

                        </div>

                    </div>


                    <a href="teslimat" style="color:#FFF; text-decoration: none;" >
                    <div class="cart-right-div-price-box-button">

                            <?=$diller['sepet-ilerle-button']?>

                    </div>
                    </a>







                </div>

            </div>

        </div>

    <?php } else {
        ?>


        <div class="empty_cart_alert">
            <div class="alert alert-light " role="alert" style="border-color:#F5F5F5; padding: 30px 0 30px 0">

                <?=$diller['sepet-bos-aciklamasi']?>

            </div>
            <br>
            <a href="urunler" class="btn btn-primary" role="button"><?=$diller['alisverise-devam']?></a>
        </div>
    <?php } ?>


    <!-- TİCARET BİLGİLENDİRME ALANI ========================== !-->
    <?php
    $commerceinfo = $db->prepare("select * from ticaret_bilgi where dil=:dil order by sira asc limit 4");
    $commerceinfo->execute(array(
        'dil' => $_SESSION['dil']
    ));
    ?>
    <?php
    if($ayar['ticaret_text_sepet'] == 1)
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


</div>

<!-- CONTENT AREA ============== !-->






<?php include 'includes/template/footer.php'?>
</body>
</html>
<?php include "includes/config/footer_libs.php";?>


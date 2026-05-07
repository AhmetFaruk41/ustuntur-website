<?php echo !defined("GUVENLIK") ? die("Vaoww! Bu ne cesaret?") : null;?><?php
$ozelliksettings = $db->prepare("select * from ozellik_ayar where id='1'");
$ozelliksettings->execute();
$ozellikset = $ozelliksettings->fetch(PDO::FETCH_ASSOC);
$ozelliklimit = $ozellikset["ozellik_limit"];

$num = 1;
$ozellik_listele = $db->prepare("select * from ozellik where durum='1' and dil='$_SESSION[dil]' and anasayfa='1' order by sira asc limit $ozelliklimit");
$ozellik_listele->execute();


?>

<style>
    .ozellik-home-main-div{width:<?php if($ozellikset['width']==1){?> 90%; <?php }else {?> 100% <?php }?> ; height: auto; overflow: hidden; background-color: #<?php echo $ozellikset['back_color'] ?>; padding: 0 0 <?php echo $ozellikset['padding'] ?>px 0; }
    .features-main-header{background-color: #<?php echo $ozellikset['head_color'] ?>; }
    .features-bottom-arrow{position: absolute; left:50%; margin-top: 0px}
    .features-bottom-arrow i{font-size:90px; color:#<?php echo $ozellikset['head_color'] ?>;}
</style>


<div class="ozellik-home-main-div">



    <div class="features-main-header">
        <div class="features-main-header-head font-open-sans " style="color:#<?php echo $ozellikset['baslik_color'] ?>">
            <?php echo $diller['ozellik']?>
        </div>
        <div class="features-main-header-spot font-light" style="color:#<?php echo $ozellikset['spot_color'] ?>">
            <?php echo $diller['ozellik-aciklamasi']?>
        </div>
        <div class="features-bottom-arrow"><i class="fa fa-caret-down" aria-hidden="true"></i></div>
    </div>



    <div class="ozellik-home-main-div-inside counters">

        <?php if ($ozellik_listele->rowCount() > 0) { ?>

<?php foreach ($ozellik_listele as $oz) { ?>

        <div class="features-box" data-appear-animation="fadeInUp" data-appear-animation-delay="<?php echo $num++ ?>00" >
            <div class="features-box-icon" style="background: #<?php echo $ozellikset['icon_back_color']?>; border-radius: <?php echo $ozellikset['icon_border_radius']?>px;">
                <div class="features-box-icon-table">
                    <div class="features-box-icon-table-ic">
                        <i class="fa <?php echo $oz['icon']?>" style="color:#<?php echo $ozellikset['icon_color']?>;" ></i>
                    </div>
                </div>
            </div><div class="features-box-text">
                <div class="features-box-text-head" style="color:#<?php echo $ozellikset['box_head_color']?>">
                    <?php echo $oz['baslik']?>
                </div>
                <div class="features-box-text-spot" style="color:#<?php echo $ozellikset['box_spot_color']?>">
                    <?php echo $oz['spot']?>
                </div>
            </div>
        </div>

<?php }?>

        <?php } else { ?>

            <div class="features-box" data-appear-animation="fadeInUp" data-appear-animation-delay="300" >
                <div class="features-box-icon" style="background: #000; border-radius: 60px;">
                    <div class="features-box-icon-table">
                        <div class="features-box-icon-table-ic">
                            <i class="fa fa-exclamation-circle" style="color:#FFF;" ></i>
                        </div>
                    </div>
                </div><div class="features-box-text">
                    <div class="features-box-text-head" style="color:#000">
                        Özellik Eklenmemiş!
                    </div>
                    <div class="features-box-text-spot" style="color:#666">
                        Panelden yeni özellikler ekleyebilirsiniz
                    </div>
                </div>
            </div>

        <?php } ?>

    </div>


    <?php if ($ozellik_listele->rowCount() > 0) { ?>

    <?php
    if($ozellikset['ozellik_button'] == 1) {
    ?>
    <div class="ozellik-home-button-div">
        <a class="btn btn-<?php echo $ozellikset['button_bg']?> font-14 font-medium" href="ozellikler" role="button"><?php echo $diller['ozellik-tumu']?></a>
    </div>
<?php }?>

    <?php }?>

</div>

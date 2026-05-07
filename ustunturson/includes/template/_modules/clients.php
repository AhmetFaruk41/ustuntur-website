<?php echo !defined("GUVENLIK") ? die("Vaoww! Bu ne cesaret?") : null;?><?php
$markasettings = $db->prepare("select * from marka_ayar where id='1'");
$markasettings->execute();
$markaset = $markasettings->fetch(PDO::FETCH_ASSOC);
$markalimit = $markaset["marka_limit"];

?>
<?php
$num = 1;
$marka_liste = $db->prepare("select * from marka where durum='1' order by sira asc limit $markalimit");
$marka_liste->execute();
?>
<style>
    .clients-home-main-div{width:<?php if($markaset['width']==1){?> 90%; <?php }else {?> 100% <?php }?> ; height: auto; overflow: hidden; background-color: #<?php echo $markaset['back_color'] ?>; padding: <?php echo $markaset['padding'] ?>px 0 <?php echo $markaset['padding'] ?>px 0; }

    .owl-dots button{outline: none !important;  margin-top: 50px !important;}

    .owl-theme .owl-dots .owl-dot.active span, .owl-theme .owl-dots .owl-dot span {
        width: 15px;    height: 6px;    margin: 5px 4px;    background: rgba(0,0,0,0.2);    display: block;    -webkit-backface-visibility: visible;    transition: all .2s ease;    border-radius: 30px;
    }
    .owl-dot.active span {   width: 30px !important; background:#<?php echo $ayar['dots_color'] ?> !important;}
</style>


<div class="clients-home-main-div">

    <div class="modules-header-main">
        <div class="modules-header-main-head" style="background:url(images/<?php echo $markaset['divider'] ?>.png) no-repeat center bottom;">
            <div class="modules-header-main-baslik font-open-sans font-<?php echo $markaset['font_weight'] ?> font-spacing" style="color:#<?php echo $markaset['baslik_color'] ?>">
                <?php echo $diller['marka']?>
            </div>
            <div class="modules-header-main-spot font-raleway font-light" style="color:#<?php echo $markaset['spot_color'] ?>; letter-spacing: 0.07em">
                <?php echo $diller['marka-aciklamasi']?>
            </div>
        </div>
    </div>

    <div class="clients-home-main-div-inside counters">





        <div class="clients-owl owl-theme" >


            <?php if ($marka_liste->rowCount() > 0 ) { ?>

            <?php foreach ($marka_liste as $marka) { ?>
                <div class="clients-box">
                    <img src="images/clients/<?php echo $marka['gorsel'] ?>" alt="<?php echo $marka['baslik'] ?>">
                </div>
           <?php } ?>

            <?php } else { ?>

                <div class="clients-box">
                    <img src="https://via.placeholder.com/220x150?text=No+Image" alt="NoImage">
                </div>

            <?php } ?>


        </div>


        <script>
            $(document).ready(function() {
                var owl = $('.clients-owl');
                owl.owlCarousel({
                    margin: 50,
                    nav: false,
                    dots:true,
                    navText: ["<img src='images/arrowleft.png'>","<img src='images/arrowright.png'>"],
                    navClass:['product_prev','product_next'],
                    responsiveClass:true,
                    loop: true,
                    autoplayHoverPause: true,
                    autoplay:true,
                    autoplayTimeout:3000,
                    responsive: {
                        <?php
                        if($marka_liste->rowCount()==1) {
                        ?>
                        0: {
                            items: 1
                        },

                        400: {
                            items: 1
                        },
                        415: {
                            items: 1
                        },
                        800: {
                            items: 1
                        },
                        1000: {
                            items: 1
                        },
                        1100: {
                            items: 1
                        },
                        1600: {
                            items: 1
                        },
                        1920: {
                            items: 1
                        }

                        <?php } ?>

                        <?php
                        if($marka_liste->rowCount()==2) {
                        ?>
                        0: {
                            items: 2
                        },

                        400: {
                            items: 2
                        },
                        415: {
                            items: 2
                        },
                        800: {
                            items: 2
                        },
                        1000: {
                            items: 2
                        },
                        1100: {
                            items:2
                        },
                        1600: {
                            items:2
                        },
                        1920: {
                            items:2
                        }

                        <?php } ?>
                        <?php
                        if($marka_liste->rowCount()==3) {
                        ?>
                        0: {
                            items: 2
                        },

                        400: {
                            items: 2
                        },
                        415: {
                            items: 2
                        },
                        800: {
                            items: 2
                        },
                        1000: {
                            items: 3
                        },
                        1100: {
                            items:3
                        },
                        1600: {
                            items:3
                        },
                        1920: {
                            items:3
                        }

                        <?php } ?>
                        <?php
                        if($marka_liste->rowCount()==4) {
                        ?>
                        0: {
                            items: 2
                        },

                        400: {
                            items: 2
                        },
                        415: {
                            items: 2
                        },
                        800: {
                            items: 4
                        },
                        1000: {
                            items: 4
                        },
                        1100: {
                            items:4
                        },
                        1600: {
                            items:4
                        },
                        1920: {
                            items:4
                        }

                        <?php } ?>

                        <?php
                        if($marka_liste->rowCount()==5) {
                        ?>
                        0: {
                            items: 2
                        },

                        400: {
                            items: 2
                        },
                        415: {
                            items: 2
                        },
                        800: {
                            items: 5
                        },
                        1000: {
                            items: 5
                        },
                        1100: {
                            items:5
                        },
                        1600: {
                            items:5
                        },
                        1920: {
                            items:5
                        }

                        <?php } ?>

                        <?php
                        if($marka_liste->rowCount()>=6) {
                        ?>
                        0: {
                            items: 2
                        },

                        400: {
                            items: 2
                        },
                        415: {
                            items: 5
                        },
                        800: {
                            items: 5
                        },
                        1000: {
                            items: 5
                        },
                        1100: {
                            items:5
                        },
                        1600: {
                            items:6
                        },
                        1920: {
                            items:6
                        }

                        <?php } ?>
                    }
                })
            })
        </script>


    </div>
</div>

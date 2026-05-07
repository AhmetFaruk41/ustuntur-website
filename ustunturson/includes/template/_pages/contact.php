<?php echo !defined("GUVENLIK") ? die("Vaoww! Bu ne cesaret?") : null;?>
<?php
$sosyalmedya_cek = $db->prepare("SELECT * FROM sosyal ORDER BY sira ASC");
$sosyalmedya_cek->execute();
$sosyal_list = $sosyalmedya_cek->fetchAll(PDO::FETCH_ASSOC);

// Telefon temizle (tel: linkler için)
$tel_clean = preg_replace('/\D+/', '', $ayar['site_tel'] ?? '');
$gsm_clean = preg_replace('/\D+/', '', $ayar['site_gsm'] ?? '');
$wp_clean  = preg_replace('/\D+/', '', $ayar['site_whatsapp'] ?? '');
?>
<title><?php echo $diller['iletisim-title'] ?> | <?php echo $ayar['site_baslik']?></title>
<meta name="description" content="<?php echo $ayar['site_desc'] ?>">
<meta name="keywords" content="<?php echo $ayar['site_tags'] ?>">
<meta name="author" content="<?php echo $ayar['site_baslik'] ?>" />
<meta name="robots" content="index follow">

<?php include "includes/config/header_libs.php";?>
</head>
<body>
<?php include 'includes/template/pre-loader.php'?>
<?php include 'includes/template/header.php'?>

<!-- PAGE HEADER -->
<div class="page-headers-main">
    <div class="page-headers-main-in">
        <h1 class="page-headers-baslik">İletişim</h1>
        <div class="page-headers-spot">Sorularınız ve teklif talepleriniz için bize ulaşın</div>
    </div>
</div>

<!-- CONTACT MAIN -->
<section class="ut-contact-section">
    <div class="ut-contact-wrap">

        <!-- Kart Şeridi: 4 hızlı iletişim noktası -->
        <div class="ut-contact-cards">
            <?php if (!empty($ayar['site_tel'])) { ?>
            <a href="tel:<?php echo $tel_clean ?>" class="ut-contact-card">
                <div class="ut-cc-icon"><i class="fa fa-phone"></i></div>
                <div class="ut-cc-label">SABİT HAT</div>
                <div class="ut-cc-value"><?php echo $ayar['site_tel'] ?></div>
            </a>
            <?php } ?>

            <?php if (!empty($ayar['site_gsm'])) { ?>
            <a href="tel:<?php echo $gsm_clean ?>" class="ut-contact-card">
                <div class="ut-cc-icon"><i class="fa fa-mobile" style="font-size:24px;"></i></div>
                <div class="ut-cc-label">CEP TELEFONU</div>
                <div class="ut-cc-value"><?php echo $ayar['site_gsm'] ?></div>
            </a>
            <?php } ?>

            <?php if (!empty($ayar['site_whatsapp'])) { ?>
            <a href="https://wa.me/<?php echo $wp_clean ?>" target="_blank" class="ut-contact-card ut-contact-card--wp">
                <div class="ut-cc-icon"><i class="fa fa-whatsapp"></i></div>
                <div class="ut-cc-label">WHATSAPP</div>
                <div class="ut-cc-value">+90 <?php echo substr($wp_clean, -10) ?></div>
            </a>
            <?php } ?>

            <?php if (!empty($ayar['site_mail'])) { ?>
            <a href="mailto:<?php echo $ayar['site_mail'] ?>" class="ut-contact-card">
                <div class="ut-cc-icon"><i class="fa fa-envelope"></i></div>
                <div class="ut-cc-label">E-POSTA</div>
                <div class="ut-cc-value"><?php echo $ayar['site_mail'] ?></div>
            </a>
            <?php } ?>
        </div>

        <!-- 2-kolon: Sol bilgi paneli + Sağ form -->
        <div class="ut-contact-grid">

            <!-- SOL: İletişim bilgileri paneli -->
            <aside class="ut-contact-info-panel">
                <h2 class="ut-contact-info-title">İletişim Bilgileri</h2>
                <div class="ut-contact-info-divider"></div>
                <p class="ut-contact-info-lead">
                    Personel servis taşımacılığı, öğrenci servisi, VIP transfer veya tur organizasyonu için
                    bize ulaşın. Uzman ekibimiz en kısa sürede size geri dönüş yapacaktır.
                </p>

                <div class="ut-contact-row">
                    <div class="ut-contact-row-icon"><i class="fa fa-map-marker"></i></div>
                    <div class="ut-contact-row-text">
                        <strong>Adres</strong>
                        <?php echo $ayar['adres_bilgisi'] ?? 'İkitelli OSB, Bağcılar / İSTANBUL' ?>
                    </div>
                </div>

                <?php if (!empty($ayar['site_workhour'])) { ?>
                <div class="ut-contact-row">
                    <div class="ut-contact-row-icon"><i class="fa fa-clock-o"></i></div>
                    <div class="ut-contact-row-text">
                        <strong>Çalışma Saatleri</strong>
                        <?php echo $ayar['site_workhour'] ?>
                    </div>
                </div>
                <?php } ?>

                <?php if (!empty($sosyal_list)) { ?>
                <div class="ut-contact-row">
                    <div class="ut-contact-row-icon"><i class="fa fa-share-alt"></i></div>
                    <div class="ut-contact-row-text">
                        <strong>Sosyal Medya</strong>
                        <div class="ut-contact-social">
                            <?php foreach ($sosyal_list as $sosyal) { ?>
                            <a href="<?php echo $sosyal['url'] ?>" target="_blank" rel="noopener" title="<?php echo $sosyal['baslik'] ?>">
                                <i class="fa <?php echo $sosyal['icon'] ?>"></i>
                            </a>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </aside>

            <!-- SAĞ: Form -->
            <div class="ut-contact-form-panel">
                <h2 class="ut-contact-form-title">Bize Mesaj Gönderin</h2>
                <div class="ut-contact-info-divider"></div>
                <p class="ut-contact-form-lead">
                    Aşağıdaki formu doldurun, en geç 24 saat içinde size geri dönüş yapalım.
                </p>

                <form method="post" action="includes/post/contactpost.php" class="ut-contact-form">
                    <div class="ut-form-row">
                        <div class="ut-form-group">
                            <label>Ad Soyad <span class="ut-req">*</span></label>
                            <input type="text" name="isim" required placeholder="Adınız ve soyadınız">
                        </div>
                        <div class="ut-form-group">
                            <label>E-posta <span class="ut-req">*</span></label>
                            <input type="email" name="eposta" required placeholder="ornek@mail.com">
                        </div>
                    </div>

                    <div class="ut-form-row">
                        <div class="ut-form-group">
                            <label>Telefon <span class="ut-req">*</span></label>
                            <input type="tel" name="telno" required placeholder="0500 000 00 00">
                        </div>
                        <div class="ut-form-group">
                            <label>Konu</label>
                            <input type="text" name="konu" placeholder="Mesajınızın konusu">
                        </div>
                    </div>

                    <div class="ut-form-row">
                        <div class="ut-form-group ut-form-group--full">
                            <label>Mesajınız <span class="ut-req">*</span></label>
                            <textarea name="mesaj" required placeholder="Talep, soru veya geri bildiriminizi yazın..."></textarea>
                        </div>
                    </div>

                    <?php if ($ayar['site_captcha'] == 1) { ?>
                    <div class="ut-form-row">
                        <div class="ut-form-group">
                            <label>Güvenlik Kodu <span class="ut-req">*</span></label>
                            <div class="ut-captcha-wrap">
                                <img src="includes/template/captcha.php" alt="Captcha">
                                <input type="text" name="secure_code" required maxlength="5" placeholder="Kodu girin">
                            </div>
                        </div>
                    </div>
                    <?php } ?>

                    <div class="ut-form-actions">
                        <button type="submit" name="contactgonder" class="ut-form-submit">
                            <i class="fa fa-paper-plane"></i> Mesajı Gönder
                        </button>
                        <span class="ut-form-note">
                            Bilgileriniz gizli tutulur, üçüncü kişilerle paylaşılmaz.
                        </span>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<!-- HARITA -->
<?php if (!empty($ayar['site_maps_kodu'])) { ?>
<section class="ut-contact-map-section">
    <?php echo $ayar['site_maps_kodu'] ?>
</section>
<?php } ?>

<!-- SweetAlert mesaj durumları -->
<?php if (($_GET['status'] ?? '') === 'success') { ?>
<script>
$(document).ready(function () {
    swal({
        title: "Mesajınız iletildi!",
        text: "En kısa sürede size geri dönüş yapacağız.",
        type: "success",
        confirmButtonText: "Tamam"
    });
});
</script>
<?php } elseif (($_GET['status'] ?? '') === 'warning') { ?>
<script>
$(document).ready(function () {
    swal({
        title: "Güvenlik kodu hatası",
        text: "Lütfen güvenlik kodunu doğru girin.",
        type: "warning",
        confirmButtonText: "Tamam"
    });
});
</script>
<?php } ?>

<?php include 'includes/template/footer.php'?>
</body>
</html>
<?php include "includes/config/footer_libs.php";?>

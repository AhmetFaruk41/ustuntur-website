<?php echo !defined("GUVENLIK") ? die("Vaoww! Bu ne cesaret?") : null;?>
<?php
// Footer linkleri (3 sütun: Kurumsal / Hizmetler / Destek)
$footer_kurumsal = $db->prepare("SELECT * FROM footer_menu WHERE yer='0' AND durum='1' AND dil=:dil ORDER BY sira ASC");
$footer_kurumsal->execute(['dil' => $_SESSION['dil']]);
$footer_kurumsal = $footer_kurumsal->fetchAll(PDO::FETCH_ASSOC);

$footer_hizmetler = $db->prepare("SELECT * FROM footer_menu WHERE yer='1' AND durum='1' AND dil=:dil ORDER BY sira ASC");
$footer_hizmetler->execute(['dil' => $_SESSION['dil']]);
$footer_hizmetler = $footer_hizmetler->fetchAll(PDO::FETCH_ASSOC);

$footer_destek = $db->prepare("SELECT * FROM footer_menu WHERE yer='2' AND durum='1' AND dil=:dil ORDER BY sira ASC");
$footer_destek->execute(['dil' => $_SESSION['dil']]);
$footer_destek = $footer_destek->fetchAll(PDO::FETCH_ASSOC);

$footer_social = $db->prepare("SELECT * FROM sosyal ORDER BY sira ASC");
$footer_social->execute();
$footer_social = $footer_social->fetchAll(PDO::FETCH_ASSOC);

$tel_clean = preg_replace('/\D+/', '', $ayar['site_tel'] ?? '');
$gsm_clean = preg_replace('/\D+/', '', $ayar['site_gsm'] ?? '');
$wp_clean  = preg_replace('/\D+/', '', $ayar['site_whatsapp'] ?? '');
$current_year = date('Y');
?>

<!-- ÜSTÜN TUR FOOTER ============================ -->
<footer class="ut-footer">

    <!-- ÜST: 4 KOLON -->
    <div class="ut-footer-top">
        <div class="ut-footer-wrap">

            <!-- BRAND COLUMN -->
            <div class="ut-footer-brand">
                <a href="<?php echo $ayar['site_url']; ?>" class="ut-footer-logo">
                    <img src="images/logo/<?php echo $ayar['site_footer_logo'] ?: 'ustuntur-logo.png'; ?>" alt="<?php echo $ayar['site_baslik']; ?>">
                </a>
                <p class="ut-footer-about">
                    20 yıllık tecrübemizle İstanbul ve çevresinde personel servisi,
                    öğrenci servisi, VIP transfer ve tur taşımacılığı alanlarında
                    profesyonel hizmet sunuyoruz.
                </p>

                <?php if (!empty($footer_social)) { ?>
                <div class="ut-footer-social">
                    <?php foreach ($footer_social as $s) { ?>
                    <a href="<?php echo $s['url']; ?>" target="_blank" rel="noopener" title="<?php echo $s['baslik']; ?>">
                        <i class="fa <?php echo $s['icon']; ?>"></i>
                    </a>
                    <?php } ?>
                </div>
                <?php } ?>
            </div>

            <!-- KURUMSAL -->
            <div class="ut-footer-col">
                <h4 class="ut-footer-title">Kurumsal</h4>
                <ul class="ut-footer-links">
                    <?php foreach ($footer_kurumsal as $link) { ?>
                    <li><a href="<?php echo $link['url']; ?>"><?php echo $link['baslik']; ?></a></li>
                    <?php } ?>
                </ul>
            </div>

            <!-- HİZMETLER -->
            <div class="ut-footer-col">
                <h4 class="ut-footer-title">Hizmetlerimiz</h4>
                <ul class="ut-footer-links">
                    <?php foreach ($footer_hizmetler as $link) { ?>
                    <li><a href="<?php echo $link['url']; ?>"><?php echo $link['baslik']; ?></a></li>
                    <?php } ?>
                </ul>
            </div>

            <!-- İLETİŞİM -->
            <div class="ut-footer-col ut-footer-contact">
                <h4 class="ut-footer-title">İletişim</h4>
                <ul class="ut-footer-contact-list">
                    <?php if (!empty($ayar['adres_bilgisi'])) { ?>
                    <li>
                        <i class="fa fa-map-marker"></i>
                        <span><?php echo $ayar['adres_bilgisi']; ?></span>
                    </li>
                    <?php } ?>
                    <?php if (!empty($ayar['site_tel'])) { ?>
                    <li>
                        <i class="fa fa-phone"></i>
                        <a href="tel:<?php echo $tel_clean; ?>"><?php echo $ayar['site_tel']; ?></a>
                    </li>
                    <?php } ?>
                    <?php if (!empty($ayar['site_gsm'])) { ?>
                    <li>
                        <i class="fa fa-mobile"></i>
                        <a href="tel:<?php echo $gsm_clean; ?>"><?php echo $ayar['site_gsm']; ?></a>
                    </li>
                    <?php } ?>
                    <?php if (!empty($ayar['site_mail'])) { ?>
                    <li>
                        <i class="fa fa-envelope"></i>
                        <a href="mailto:<?php echo $ayar['site_mail']; ?>"><?php echo $ayar['site_mail']; ?></a>
                    </li>
                    <?php } ?>
                    <?php if (!empty($ayar['site_workhour'])) { ?>
                    <li>
                        <i class="fa fa-clock-o"></i>
                        <span><?php echo $ayar['site_workhour']; ?></span>
                    </li>
                    <?php } ?>
                </ul>
            </div>

        </div>
    </div>

    <!-- ALT: COPYRIGHT -->
    <div class="ut-footer-bottom">
        <div class="ut-footer-wrap">
            <div class="ut-footer-bottom-in">
                <div class="ut-footer-copy">
                    © <?php echo $current_year; ?> <strong>Üstün Tur Turizm Taşımacılık Ltd. Şti.</strong>
                    Tüm hakları saklıdır.
                </div>
            </div>
        </div>
    </div>

</footer>

<?php
// WhatsApp floating button
if (!empty($wp_clean)) { ?>
<a href="https://wa.me/<?php echo $wp_clean; ?>" target="_blank" rel="noopener" class="ut-whatsapp-float" title="WhatsApp ile mesaj gönder">
    <i class="fa fa-whatsapp"></i>
</a>
<?php } ?>

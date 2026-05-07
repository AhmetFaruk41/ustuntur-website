<?php
echo !defined("GUVENLIK") ? die("Vaoww! Bu ne cesaret?") : null;

// Header verileri
$headermainmenu = $db->prepare("SELECT * FROM header_menu WHERE ust_id='0' AND durum='1' AND dil=:dil ORDER BY sira ASC");
$headermainmenu->execute(['dil' => $_SESSION['dil']]);
$header_menu_items = $headermainmenu->fetchAll(PDO::FETCH_ASSOC);

$header_social = $db->prepare("SELECT * FROM sosyal ORDER BY sira ASC");
$header_social->execute();
$header_social = $header_social->fetchAll(PDO::FETCH_ASSOC);

// Telefonlari clean (tel: linkler)
$tel_clean = preg_replace('/\D+/', '', $ayar['site_tel'] ?? '');
$gsm_clean = preg_replace('/\D+/', '', $ayar['site_gsm'] ?? '');
$wp_clean  = preg_replace('/\D+/', '', $ayar['site_whatsapp'] ?? '');

// Aktif menu tespit (mevcut url ile karsilastirma)
$current_uri = $_SERVER['REQUEST_URI'] ?? '/';
$current_path = trim(parse_url($current_uri, PHP_URL_PATH), '/');

function ut_is_active($url, $current_path) {
    $url = trim($url, '/');
    if ($url === '#' && $current_path === '') return true;
    if ($url === '' && $current_path === '') return true;
    if ($url !== '#' && $url !== '' && strpos($current_path, $url) === 0) return true;
    return false;
}
?>

<!-- ================ ÜSTÜN TUR HEADER ================ -->
<header class="ut-header">

    <!-- ÜST BAR: sosyal + iletişim -->
    <div class="ut-topbar">
        <div class="ut-topbar-wrap">
            <!-- Sol: sosyal medya -->
            <div class="ut-topbar-social">
                <?php foreach ($header_social as $s) { ?>
                <a href="<?php echo $s['url']; ?>" target="_blank" rel="noopener" title="<?php echo $s['baslik']; ?>">
                    <i class="fa <?php echo $s['icon']; ?>"></i>
                </a>
                <?php } ?>
            </div>

            <!-- Sağ: iletişim -->
            <div class="ut-topbar-info">
                <?php if (!empty($ayar['site_tel'])) { ?>
                <a href="tel:<?php echo $tel_clean; ?>" class="ut-topbar-link">
                    <i class="fa fa-phone"></i><span><?php echo $ayar['site_tel']; ?></span>
                </a>
                <?php } ?>
                <?php if (!empty($ayar['site_whatsapp'])) { ?>
                <a href="https://wa.me/<?php echo $wp_clean; ?>" target="_blank" rel="noopener" class="ut-topbar-link">
                    <i class="fa fa-whatsapp"></i><span>+<?php echo $wp_clean; ?></span>
                </a>
                <?php } ?>
                <?php if (!empty($ayar['site_mail'])) { ?>
                <a href="mailto:<?php echo $ayar['site_mail']; ?>" class="ut-topbar-link">
                    <i class="fa fa-envelope"></i><span><?php echo $ayar['site_mail']; ?></span>
                </a>
                <?php } ?>
            </div>
        </div>
    </div>

    <!-- ANA HEADER: logo + menü -->
    <div class="ut-mainbar" id="utMainbar">
        <div class="ut-mainbar-wrap">

            <!-- Logo -->
            <a href="<?php echo $ayar['site_url']; ?>" class="ut-logo">
                <img src="images/logo/<?php echo $ayar['site_logo'] ?: 'ustuntur-logo.png'; ?>" alt="<?php echo $ayar['site_baslik']; ?>">
            </a>

            <!-- Desktop Nav -->
            <nav class="ut-nav" id="utNav">
                <ul class="ut-nav-list">
                    <?php foreach ($header_menu_items as $item) {
                        $active = ut_is_active($item['url'], $current_path) ? ' is-active' : '';
                    ?>
                    <li class="ut-nav-item<?php echo $active; ?>">
                        <a href="<?php echo $item['url']; ?>"><?php echo $item['baslik']; ?></a>
                    </li>
                    <?php } ?>
                </ul>
            </nav>

            <!-- Mobile hamburger -->
            <button class="ut-burger" id="utBurger" aria-label="Menü">
                <span></span><span></span><span></span>
            </button>

        </div>
    </div>
</header>

<!-- Mobile menü drawer -->
<div class="ut-drawer" id="utDrawer">
    <div class="ut-drawer-head">
        <a href="<?php echo $ayar['site_url']; ?>" class="ut-drawer-logo">
            <img src="images/logo/<?php echo $ayar['site_logo'] ?: 'ustuntur-logo.png'; ?>" alt="<?php echo $ayar['site_baslik']; ?>">
        </a>
        <button class="ut-drawer-close" id="utDrawerClose" aria-label="Kapat">×</button>
    </div>
    <ul class="ut-drawer-list">
        <?php foreach ($header_menu_items as $item) {
            $active = ut_is_active($item['url'], $current_path) ? ' is-active' : '';
        ?>
        <li class="ut-drawer-item<?php echo $active; ?>">
            <a href="<?php echo $item['url']; ?>"><?php echo $item['baslik']; ?></a>
        </li>
        <?php } ?>
    </ul>
    <div class="ut-drawer-contact">
        <?php if (!empty($ayar['site_tel'])) { ?>
        <a href="tel:<?php echo $tel_clean; ?>"><i class="fa fa-phone"></i> <?php echo $ayar['site_tel']; ?></a>
        <?php } ?>
        <?php if (!empty($ayar['site_mail'])) { ?>
        <a href="mailto:<?php echo $ayar['site_mail']; ?>"><i class="fa fa-envelope"></i> <?php echo $ayar['site_mail']; ?></a>
        <?php } ?>
        <div class="ut-drawer-social">
            <?php foreach ($header_social as $s) { ?>
            <a href="<?php echo $s['url']; ?>" target="_blank" rel="noopener"><i class="fa <?php echo $s['icon']; ?>"></i></a>
            <?php } ?>
        </div>
    </div>
</div>
<div class="ut-drawer-overlay" id="utDrawerOverlay"></div>

<!-- Sticky scroll + drawer toggle -->
<script>
(function(){
    var mainbar = document.getElementById('utMainbar');
    var burger  = document.getElementById('utBurger');
    var drawer  = document.getElementById('utDrawer');
    var dclose  = document.getElementById('utDrawerClose');
    var doverl  = document.getElementById('utDrawerOverlay');

    // Sticky
    function onScroll() {
        if (!mainbar) return;
        if (window.scrollY > 60) mainbar.classList.add('is-stuck');
        else mainbar.classList.remove('is-stuck');
    }
    window.addEventListener('scroll', onScroll, {passive:true});
    onScroll();

    // Drawer
    function openDrawer()  { drawer.classList.add('is-open'); doverl.classList.add('is-open'); document.body.style.overflow = 'hidden'; }
    function closeDrawer() { drawer.classList.remove('is-open'); doverl.classList.remove('is-open'); document.body.style.overflow = ''; }
    if (burger) burger.addEventListener('click', openDrawer);
    if (dclose) dclose.addEventListener('click', closeDrawer);
    if (doverl) doverl.addEventListener('click', closeDrawer);
    // Tıklanan link'te kapat
    drawer.querySelectorAll('a').forEach(function(a){ a.addEventListener('click', closeDrawer); });
})();
</script>

<?php
/**
 * Reusable Page Title Hero
 * Kullanim:
 *   $page_title = 'Hizmetlerimiz';
 *   $page_spot  = 'Profesyonel taşımacılık çözümlerimiz';
 *   $page_crumb = 'Hizmetler'; // breadcrumb için aktif sayfa adı (opsiyonel)
 *   include 'includes/template/page-title.php';
 */
echo !defined("GUVENLIK") ? die("Vaoww!") : null;
$pt    = $page_title ?? '';
$ps    = $page_spot  ?? '';
$pc    = $page_crumb ?? $pt;
?>
<div class="page-headers-main">
    <div class="page-headers-main-in">
        <h1 class="page-headers-baslik"><?php echo htmlspecialchars($pt); ?></h1>
        <?php if ($ps !== ''): ?>
        <div class="page-headers-spot"><?php echo htmlspecialchars($ps); ?></div>
        <?php endif; ?>
        <nav class="page-headers-crumb">
            <a href="<?php echo $ayar['site_url'] ?? '/'; ?>">Anasayfa</a>
            <span class="page-headers-crumb-sep">/</span>
            <span class="page-headers-crumb-active"><?php echo htmlspecialchars($pc); ?></span>
        </nav>
    </div>
</div>

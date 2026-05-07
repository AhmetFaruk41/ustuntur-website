<?php
/**
 * php -S yerlesik sunucu icin router.
 * .htaccess'teki RewriteRule kurallarini PHP'de simule eder.
 *
 * Kullanim:
 *   php -S 127.0.0.1:8765 -t /path/to/ustunturson router.php
 */

$uri  = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
$path = ltrim($uri, '/');
$qs   = $_SERVER['QUERY_STRING'] ?? '';

// 1) Statik varlik (mevcut dosya / dizin) - sunucuya birak
$abs = __DIR__ . '/' . $path;
if ($path !== '' && file_exists($abs) && !is_dir($abs)) {
    return false; // PHP -S statik servis eder
}
if ($path !== '' && is_dir($abs)) {
    // dizin - sonu / ile bitmiyorsa redirect, sonu / ile bitiyorsa index.php cagir
    if (substr($_SERVER['REQUEST_URI'], -1) !== '/') {
        header('Location: /' . $path . '/' . ($qs ? '?' . $qs : ''));
        return true;
    }
    foreach (['index.php', 'index.html'] as $idx) {
        $idxFile = $abs . '/' . $idx;
        if (file_exists($idxFile)) {
            $script = $path . '/' . $idx;
            $_SERVER['SCRIPT_NAME'] = '/' . $script;
            $_SERVER['PHP_SELF']    = '/' . $script;
            $_SERVER['SCRIPT_FILENAME'] = $idxFile;
            // chdir gerekli (alt-dizinin "../includes/..." pathlerini cozebilmek icin)
            // ama PHP -S router.php'yi tekrar bulmali; mutlak path zaten require'a verildi
            $oldCwd = getcwd();
            chdir($abs);
            require $idxFile;
            chdir($oldCwd);
            return true;
        }
    }
    return false;
}

// 2) Yonlendirme kurallari (.htaccess'teki RewriteRule'larin aynisi)
$rules = [
    // Tek kelimelik sayfalar
    ['#^index\.html$#i',           'index.php'],
    ['#^bakimdayiz#i',              'maintenance.php'],
    ['#^uzmanliklarimiz$#i',        'pages.php?sayfa=skills'],
    ['#^sss$#i',                    'pages.php?sayfa=faq'],
    ['#^iletisim$#i',               'pages.php?sayfa=contact'],
    ['#^iletisim/(.*)$#i',          'pages.php?sayfa=contact&status=$1'],
    ['#^ekibimiz$#i',               'pages.php?sayfa=team'],
    ['#^ozellikler$#i',             'pages.php?sayfa=features'],
    ['#^belgeler$#i',               'pages.php?sayfa=certificate'],
    ['#^markalar$#i',               'pages.php?sayfa=clients'],
    ['#^paketler$#i',               'pages.php?sayfa=pricing'],
    ['#^urunara/?(.*)$#i',          'pages.php?sayfa=search&search=$1'],
    ['#^sepet$#i',                  'pages.php?sayfa=cart'],
    ['#^teslimat$#i',               'pages.php?sayfa=delivery'],
    ['#^odeme$#i',                  'pages.php?sayfa=purchase'],
    ['#^purchasepost$#i',           'pages.php?sayfa=purchasepost'],

    // Detay sayfalari (id ve slug iceren)
    ['#^urun/([^/]+)/([0-9a-zA-Z\-_]+)$#i',                'pages.php?sayfa=productdetail&urun_id=$1'],
    ['#^urun-kategori/([^/]+)/([0-9a-zA-Z\-_]+)/(.*)$#i',  'pages.php?sayfa=categorysub&cat_id=$1&sirala=$2'],
    ['#^urun-kategori/([^/]+)/([0-9a-zA-Z\-_]+)$#i',       'pages.php?sayfa=categorysub&cat_id=$1'],
    ['#^proje/([^/]+)/([0-9a-zA-Z\-_]+)$#i',               'pages.php?sayfa=projedetail&pro_id=$1'],
    ['#^blog/([^/]+)/([0-9a-zA-Z\-_]+)$#i',                'pages.php?sayfa=blogdetail&blog_id=$1'],
    ['#^bloglar/([0-9a-zA-Z\-_]+)$#i',                     'pages.php?sayfa=blog&page=$1'],
    ['#^bloglar$#i',                                        'pages.php?sayfa=blog'],
    ['#^hizmet/([^/]+)/([0-9a-zA-Z\-_]+)$#i',              'pages.php?sayfa=servicedetail&ser_id=$1'],
    ['#^hizmetler/([0-9a-zA-Z\-_]+)$#i',                   'pages.php?sayfa=services&page=$1'],
    ['#^hizmetler$#i',                                      'pages.php?sayfa=services'],

    // Liste sayfalari (urunler, urunler/sirala vs.)
    ['#^urunler/(.+)$#i',           'pages.php?sayfa=products&sirala=$1'],
    ['#^urunler$#i',                'pages.php?sayfa=products'],
    ['#^projeler$#i',               'pages.php?sayfa=projects'],

    // E-katalog, banka
    ['#^e-katalog/([0-9a-zA-Z\-_]+)$#i', 'pages.php?sayfa=catalog&page=$1'],
    ['#^e-katalog$#i',                    'pages.php?sayfa=catalog'],
    ['#^hesap-numaralarimiz$#i',          'pages.php?sayfa=bank'],

    // Galeri & video
    ['#^galeri/([^/]+)/([0-9a-zA-Z\-_]+)$#i', 'pages.php?sayfa=photodetail&gal_id=$1'],
    ['#^foto-galeri/(.+)$#i',                  'pages.php?sayfa=photogallery&page=$1'],
    ['#^foto-galeri$#i',                       'pages.php?sayfa=photogallery'],
    ['#^video/([^/]+)/([0-9a-zA-Z\-_]+)$#i',   'pages.php?sayfa=videodetail&vid_id=$1'],
    ['#^video-galeri/(.+)$#i',                 'pages.php?sayfa=videos&page=$1'],
    ['#^video-galeri$#i',                      'pages.php?sayfa=videos'],

    // Insan kaynaklari
    ['#^insan-kaynaklari$#i',          'pages.php?sayfa=insankaynak'],
    ['#^insan-kaynaklari/(.*)$#i',     'pages.php?sayfa=insankaynak&status=$1'],

    // HTML sayfa & kurumsal
    ['#^sayfa/([0-9a-zA-Z\-_]+)$#i',    'pages.php?sayfa=htmlsayfa&id=$1'],
    ['#^kurumsal/([0-9a-zA-Z\-_]+)$#i', 'pages.php?sayfa=about&id=$1'],

    // Siparis
    ['#^siparis-basarili$#i',           'pages.php?sayfa=ordersuccess'],
    ['#^siparis-basarili/(.*)$#i',      'pages.php?sayfa=ordersuccess&status=$1'],
    ['#^odeme-basarili$#i',             'pages.php?sayfa=paysuccess'],
    ['#^odeme-basarili/(.*)$#i',        'pages.php?sayfa=paysuccess&status=$1'],

    // 404
    ['#^404$#i',                        'pages.php?sayfa=errorpage'],
];

foreach ($rules as [$pattern, $target]) {
    if (preg_match($pattern, $path, $m)) {
        // $1, $2... yer tutucularini gercek degerlerle degistir
        $rewritten = $target;
        foreach ($m as $i => $val) {
            if ($i === 0) continue;
            $rewritten = str_replace('$' . $i, $val, $rewritten);
        }

        // QUERY_STRING'i guncelle
        [$script, $newqs] = array_pad(explode('?', $rewritten, 2), 2, '');
        $merged = $newqs;
        if ($qs !== '') {
            $merged = $newqs ? $newqs . '&' . $qs : $qs;
        }
        $_SERVER['QUERY_STRING']       = $merged;
        $_SERVER['REQUEST_URI']        = '/' . $script . ($merged ? '?' . $merged : '');
        $_SERVER['SCRIPT_NAME']        = '/' . $script;
        $_SERVER['PHP_SELF']           = '/' . $script;
        parse_str($merged, $_GET);

        require __DIR__ . '/' . $script;
        return true;
    }
}

// 3) Hicbir kural eslesmiyor ve / istegi - index.php
if ($path === '' || $path === '/') {
    require __DIR__ . '/index.php';
    return true;
}

// 4) Bilinmeyen URL - 404
http_response_code(404);
$_SERVER['QUERY_STRING'] = 'sayfa=errorpage';
$_GET = ['sayfa' => 'errorpage'];
require __DIR__ . '/pages.php';
return true;

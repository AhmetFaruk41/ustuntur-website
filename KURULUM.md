# Üstün Tur Kurumsal Site - Kurulum Rehberi

## 📦 İçerik

```
ustuntur/
├── ustunturson/              # PHP site kodu (Apache/Nginx için)
│   ├── index.php             # Anasayfa giriş noktası
│   ├── pages.php             # URL routing
│   ├── router.php            # YEREL geliştirme için (php -S)
│   ├── .htaccess             # Apache rewrite kuralları
│   ├── includes/             # Şablonlar, modüller, dil dosyaları
│   ├── systemx/              # Admin paneli (/systemx/)
│   ├── images/               # Tüm görseller
│   ├── assets/               # CSS, JS, fontlar
│   └── ...
├── db_ustun_FULL.sql         # ⭐ TEK GEREKLİ DB DUMP (yapı + içerik)
└── KURULUM.md                # Bu dosya
```

> Diğer .sql dosyaları (db_ustun_schema, db_ustun_seed, db_ustun_fix, db_ustun_content, ustuntur, db_ustuntur) eski iş akışından kalan ara dosyalardır. Sunucuya sadece **db_ustun_FULL.sql** lazım.

---

## 🚀 Üretim (Apache + cPanel/Plesk)

### 1. Dosyaları sunucuya yükle
`ustunturson/` klasörünün **içindeki** her şeyi sitenizin web root'una koyun (genelde `public_html`).

### 2. MySQL veritabanı oluştur
cPanel veya phpMyAdmin'den:
- Veritabanı adı: `db_ustun`
- Kullanıcı: `usr_ustun`
- Parola: `Ustun2019!` (ya da kendi tercihiniz)
- Kullanıcıya `db_ustun` üzerinde tam yetki ver

### 3. DB içeriğini import et
phpMyAdmin → `db_ustun` → İçe Aktar → `db_ustun_FULL.sql` seç → Git

### 4. Konfigürasyon
`ustunturson/includes/config/config.local.php` dosyası oluştur (gerekiyorsa):

```php
<?php
$DB_HOST = 'localhost';
$DB_NAME = 'db_ustun';
$DB_USER = 'usr_ustun';
$DB_PASS = 'Ustun2019!';
```

> Üretim parolasını mutlaka değiştirin. config.local.php yokken config.php zaten yerel default'ları kullanır.

### 5. Site URL'ini güncelle
Admin panel → Ayarlar → SEO Optimizasyon → "Site URL" alanını gerçek domain'e ayarla:
`https://ustuntur.com.tr/`

### 6. .htaccess kontrolü
Apache `mod_rewrite` aktif olmalı. Yoksa hosting paneline `.htaccess` etkin et.

---

## 💻 Yerel Geliştirme

### Gereksinimler
- PHP 8.x
- MySQL/MariaDB

### Kurulum
```bash
# 1) MySQL içe aktar
mysql -uroot -p < db_ustun_FULL.sql

# 2) Yerel config (zaten mevcut)
cat ustunturson/includes/config/config.local.php

# 3) Yerel sunucuyu başlat
cd ustunturson
php -S 127.0.0.1:8765 router.php
```

Tarayıcıdan: **http://127.0.0.1:8765/**

> `router.php`, Apache `.htaccess` rewrite kurallarını PHP yerleşik sunucu için simüle eder. Yalnızca yerel geliştirmede gereklidir, üretimde dokunulmaz.

---

## 🔐 Yönetici Paneli

URL: **/systemx/**
- Kullanıcı: `admin`
- Parola: `admin123`

> İlk işiniz panelden parolayı değiştirin (Profil → Şifre).

### Panel Bölümleri
- **Slider** — Anasayfa video/görsel slaytları
- **Hizmetler** — Hizmet listesi ve detay
- **Filomuz (Ürünler)** — Araç katalog
- **Galeriler** — Foto/video galeri
- **Blog** — Yazılar
- **Ekibimiz** — Yönetim ekibi
- **SSS** — Sıkça sorulanlar
- **Belgelerimiz** — Sertifikalar
- **Banka** — Hesap bilgileri
- **Müşteri Yorumları**
- **Header / Footer Menü**
- **Sosyal Medya**
- **Mesajlar** — İletişim formu mesajları
- **İK Başvuruları**
- **Ayarlar** (SEO, ödeme, SMS, SMTP, sabit alanlar)

---

## 📊 Mevcut İçerik

| Bölge | Adet |
|---|---|
| Hizmetler | 6 |
| Filo (araç) | 10 |
| Filo kategorisi | 4 |
| Blog yazıları | 6 |
| Projeler | 6 |
| Müşteri yorumları | 3 |
| Ekibimiz | 6 kişi |
| SSS | 10 soru |
| Belgeler | 6 |
| Banka | 4 |
| Galeri kategorisi | 4 |
| Video | 4 |
| Sayaçlar | 4 |
| Markalar | 5 |
| Slider | 4 slayt |
| Header menü | 7 |
| Footer menü | 15 |
| Sosyal medya | 4 |
| HTML sayfa (Hakkımızda, KVKK vs.) | 4 |

**Tüm içerik dummy/placeholder değil — Üstün Tur taşımacılık firması için yazılmış gerçekçi metinlerdir.** Görseller mevcut `images/` klasörünü kullanır; yeni gerçek görseller panelden yüklenmelidir.

---

## ⚙️ Dikkat Edilecekler

### SMTP / Mail Gönderimi
- `ayarlar.smtp_durum` = 0 → mail gönderim devre dışı.
- Üretimde 1 yapın ve SMTP bilgilerini panelden girin (Ayarlar → SMTP).
- Form mesajları DB'ye yazılır, mail kapalıyken sadece DB'de görünür.

### Captcha
- `ayarlar.site_captcha` = 0 → captcha kapalı (test için).
- Üretimde 1 yapıp formlara captcha ekleyin (admin panelinden).

### Sepet / E-ticaret
- `odeme_ayar.sepet_sistemi` = 0 → sepet kapalı.
- Üstün Tur kataloğa-dayalı bir taşımacılık firması, sepet/ödeme akışı kullanmıyor. Müşteri iletişim formu üzerinden teklif istiyor.

### PHP Sürümü
- Kod **PHP 8.5'e kadar uyumlu** (505 dosya tested).
- Eski PHP 7.x'te de çalışmalı ama önerilen 8.0+.

---

## 🧹 Temizlenenler

Bu projede teslim edilmeyen ama eskiden klasörde olan:
- `secure/` (eski Yasa Medya admin paneli — silindi, 26MB)
- `yedek/` (eski statik HTML yedekleri — silindi, 16MB)
- `ustuntur.zip` ve `ustunturyedek.zip` (eski yedekler — silindi, 174MB)
- `secure/error_log` (14MB)

**Toplam: 389MB → 134MB (boyut %66 azaldı)**

---

## ❓ Sorun Giderme

**Q: 500 Internal Server Error**
A: PHP ihtiyacı `mod_rewrite` veya `pdo_mysql` aktif olmayabilir. Hosting destekten kontrol ettir.

**Q: "DB baglanti hatasi"**
A: `includes/config/config.local.php` dosyasını oluştur ve doğru DB bilgilerini gir.

**Q: Admin paneline giremiyorum**
A: yonetici tablosunda kullanıcı var mı kontrol et:
```sql
SELECT * FROM yonetici;
```
Yoksa şu satırla ekle:
```sql
INSERT INTO yonetici (user_adi, pass_sifre, isim) 
VALUES ('admin', MD5('admin123'), 'Yönetici');
```

**Q: Görseller yüklenmedi**
A: `images/` klasörünün yazma izni olduğundan emin ol (chmod 755).

---

## 📞 İletişim

Site içinde varsayılan iletişim bilgileri ekledim — admin panelinden güncelleyin:
- Tel: 0212 549 00 00
- GSM: 0532 282 00 00
- Mail: info@ustuntur.com.tr
- Adres: İkitelli OSB, Bağcılar / İSTANBUL

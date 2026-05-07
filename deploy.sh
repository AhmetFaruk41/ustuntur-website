#!/usr/bin/env bash
#
# Üstün Tur deploy script (Nginx + PHP-FPM)
# Kullanım: sudo bash deploy.sh
#
# Sıfırdan kurulumu da yarım kalan kurulumu da tamamlar (idempotent).

set -euo pipefail

# ============================================================
# Ayarlar
# ============================================================
DOMAIN="ustuntur.com.tr"
SITE_DIR="/var/www/${DOMAIN}"
WEBROOT="${SITE_DIR}/ustunturson"

DB_NAME="db_ustun"
DB_USER="usr_ustun"
DB_PASS="Ustun2019!"

PHP_VERSION="8.2"
PHP_SOCK="/var/run/php/php${PHP_VERSION}-fpm.sock"

ADMIN_EMAIL="info@ustuntur.com.tr"

# Opsiyonel
NEW_ADMIN_PASS=""        # boş bırakılırsa admin parolası değiştirilmez
RUN_CERTBOT="1"          # 1 ise Let's Encrypt çalıştırılır

# ============================================================

log()  { echo -e "\033[1;34m▶ $*\033[0m"; }
ok()   { echo -e "\033[1;32m✓ $*\033[0m"; }
warn() { echo -e "\033[1;33m⚠ $*\033[0m"; }

if [[ $EUID -ne 0 ]]; then
  echo "Bu script root olarak çalıştırılmalı: sudo bash deploy.sh" >&2
  exit 1
fi

[[ -d "$WEBROOT" ]] || { echo "Site klasörü yok: $WEBROOT" >&2; exit 1; }

# ============================================================
# 1) DB ve kullanıcı
# ============================================================
log "MySQL: DB ve kullanıcı kontrol ediliyor..."
DB_EXISTS=$(mysql -u root -N -B -e "SHOW DATABASES LIKE '${DB_NAME}';" | wc -l)
if [[ "$DB_EXISTS" -eq 0 ]]; then
  log "DB yok, oluşturuluyor..."
  mysql -u root -e "
    CREATE DATABASE ${DB_NAME} CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
    CREATE USER IF NOT EXISTS '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASS}';
    GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'localhost';
    FLUSH PRIVILEGES;
  "
  ok "DB ve kullanıcı oluşturuldu"
else
  ok "DB zaten mevcut"
  mysql -u root -e "
    CREATE USER IF NOT EXISTS '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASS}';
    GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'localhost';
    FLUSH PRIVILEGES;
  "
fi

# ============================================================
# 2) Dump import (tablo yoksa)
# ============================================================
log "Tablolar kontrol ediliyor..."
TABLE_COUNT=$(mysql -u "$DB_USER" -p"$DB_PASS" -N -B -e \
  "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema='${DB_NAME}';" 2>/dev/null)
if [[ "$TABLE_COUNT" -eq 0 ]]; then
  log "Tablo yok, dump import ediliyor..."
  mysql -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < "${SITE_DIR}/db_ustun_FULL.sql"
  ok "Dump import edildi"
else
  ok "$TABLE_COUNT tablo mevcut, import atlandı"
fi

# ============================================================
# 3) config.local.php
# ============================================================
CONFIG_FILE="${WEBROOT}/includes/config/config.local.php"
if [[ ! -f "$CONFIG_FILE" ]]; then
  log "config.local.php oluşturuluyor..."
  cat > "$CONFIG_FILE" <<PHP
<?php
\$DB_HOST = 'localhost';
\$DB_NAME = '${DB_NAME}';
\$DB_USER = '${DB_USER}';
\$DB_PASS = '${DB_PASS}';
PHP
  chown www-data:www-data "$CONFIG_FILE"
  chmod 640 "$CONFIG_FILE"
  ok "config.local.php yazıldı"
else
  ok "config.local.php zaten var"
fi

# ============================================================
# 4) Sahiplik ve yazma izinleri
# ============================================================
log "Dosya sahipliği ve izinleri ayarlanıyor..."
chown -R www-data:www-data "$SITE_DIR"
find "${WEBROOT}/images" "${WEBROOT}/upload" -type d -exec chmod 775 {} \; 2>/dev/null || true
ok "İzinler ayarlandı"

# ============================================================
# 5) Nginx server block
# ============================================================
NGINX_FILE="/etc/nginx/sites-available/${DOMAIN}"
log "Nginx server block yazılıyor..."
cat > "$NGINX_FILE" <<NGINX
server {
    listen 80;
    listen [::]:80;
    server_name ${DOMAIN} www.${DOMAIN};

    root ${WEBROOT};
    index index.php index.html;

    access_log /var/log/nginx/ustuntur_access.log;
    error_log  /var/log/nginx/ustuntur_error.log;

    client_max_body_size 50M;

    # Bilinmeyen URL'ler router.php'ye gider (.htaccess rewrite kurallarını PHP'de simüle eder)
    location / {
        try_files \$uri \$uri/ /router.php?\$query_string;
    }

    # PHP dosyaları PHP-FPM'e gönderilir
    location ~ \.php\$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:${PHP_SOCK};
        fastcgi_read_timeout 120;
    }

    # Hassas dosya/dizin erişimini engelle
    location ~ /\.(ht|git) {
        deny all;
    }
    location ~ ^/(includes/config|\.well-known/acme-challenge) {
        # config klasörü erişime kapalı
    }
    location = /includes/config/config.local.php { deny all; }
    location ~ ^/includes/config/ { deny all; }

    # Statik dosyalar için cache
    location ~* \.(jpg|jpeg|png|gif|webp|svg|ico|css|js|woff|woff2|ttf|otf|eot|mp4|webm|ogg)\$ {
        expires 30d;
        add_header Cache-Control "public, immutable";
        access_log off;
        try_files \$uri =404;
    }

    # Gzip
    gzip on;
    gzip_vary on;
    gzip_types text/plain text/css text/xml application/json application/javascript application/xml+rss application/atom+xml image/svg+xml;
}
NGINX
ok "Nginx config yazıldı: $NGINX_FILE"

# Site enable + default disable
ln -sf "$NGINX_FILE" "/etc/nginx/sites-enabled/${DOMAIN}"
[[ -L /etc/nginx/sites-enabled/default ]] && rm /etc/nginx/sites-enabled/default

log "Nginx config test..."
nginx -t
systemctl reload nginx
ok "Nginx reload edildi"

# PHP-FPM restart (config değişikliklerinin tutması için)
systemctl reload "php${PHP_VERSION}-fpm"

# ============================================================
# 6) Üretim ayarları (DB)
# ============================================================
log "DB üretim ayarları güncelleniyor..."
mysql -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" -e "
  UPDATE ayarlar SET
    site_url='https://${DOMAIN}/',
    site_captcha='1',
    smtp_durum=1
  WHERE id=1;
" 2>/dev/null
ok "site_url, captcha, smtp_durum ayarlandı"

if [[ -n "$NEW_ADMIN_PASS" ]]; then
  log "Admin parolası güncelleniyor..."
  mysql -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" -e \
    "UPDATE yonetici SET pass_sifre=MD5('${NEW_ADMIN_PASS}') WHERE user_adi='admin';" 2>/dev/null
  ok "Admin parolası değiştirildi"
fi

# ============================================================
# 7) SSL (Let's Encrypt — Nginx plugin)
# ============================================================
if [[ "$RUN_CERTBOT" == "1" ]]; then
  if [[ -f "/etc/letsencrypt/live/${DOMAIN}/fullchain.pem" ]]; then
    ok "SSL sertifikası zaten mevcut"
  else
    log "Let's Encrypt sertifikası alınıyor..."
    if command -v certbot >/dev/null && certbot --nginx -d "${DOMAIN}" -d "www.${DOMAIN}" \
         --redirect --agree-tos -m "${ADMIN_EMAIL}" --non-interactive; then
      ok "SSL kuruldu, HTTP→HTTPS redirect aktif"
    else
      warn "SSL alınamadı. DNS henüz yayılmamış veya certbot kurulu değil olabilir."
      warn "Sonra elle: apt install -y certbot python3-certbot-nginx && certbot --nginx -d ${DOMAIN} -d www.${DOMAIN}"
    fi
  fi
fi

echo
ok "Kurulum tamamlandı"
echo
echo "    Site:        http://${DOMAIN}/"
echo "    Admin panel: http://${DOMAIN}/systemx/  (admin / admin123)"
echo
echo "İlk yapılacaklar:"
echo "  1. Admin paneline gir, parolayı değiştir."
echo "  2. SMTP bilgilerini ayarlardan gir."
echo "  3. Site URL'ini ayarlardan kontrol et."

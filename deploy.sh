#!/usr/bin/env bash
#
# Üstün Tur deploy script
# Kullanım: sudo bash deploy.sh
#
# Sıfırdan kurulumu da yarım kalan kurulumu da tamamlar (idempotent).
# DB var mı, config var mı, vhost var mı kontrol eder; yoksa oluşturur.

set -euo pipefail

# ============================================================
# Ayarlar — gerekirse değiştir
# ============================================================
DOMAIN="ustuntur.com.tr"
SITE_DIR="/var/www/${DOMAIN}"
WEBROOT="${SITE_DIR}/ustunturson"

DB_NAME="db_ustun"
DB_USER="usr_ustun"
DB_PASS="Ustun2019!"

ADMIN_EMAIL="info@ustuntur.com.tr"

# Opsiyonel — set edilirse uygulanır
NEW_ADMIN_PASS=""        # boş bırakılırsa admin paroli değiştirilmez
RUN_CERTBOT="1"          # 1 ise Let's Encrypt çalıştırılır (DNS yayılmışsa)

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
  # Kullanıcı yoksa yine de oluştur
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
  "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema='${DB_NAME}';")
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
# 5) Apache vhost
# ============================================================
VHOST_FILE="/etc/apache2/sites-available/${DOMAIN}.conf"
if [[ ! -f "$VHOST_FILE" ]]; then
  log "Apache vhost yazılıyor..."
  cat > "$VHOST_FILE" <<CONF
<VirtualHost *:80>
    ServerName ${DOMAIN}
    ServerAlias www.${DOMAIN}
    DocumentRoot ${WEBROOT}

    <Directory ${WEBROOT}>
        Options -Indexes +FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>

    ErrorLog \${APACHE_LOG_DIR}/ustuntur_error.log
    CustomLog \${APACHE_LOG_DIR}/ustuntur_access.log combined
</VirtualHost>
CONF
  ok "vhost yazıldı: $VHOST_FILE"
else
  ok "vhost zaten var"
fi

a2enmod rewrite >/dev/null
a2ensite "${DOMAIN}" >/dev/null
a2dissite 000-default >/dev/null 2>&1 || true

log "Apache config test..."
apache2ctl configtest
systemctl reload apache2
ok "Apache reload edildi"

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
  log "Admin paroli güncelleniyor..."
  mysql -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" -e \
    "UPDATE yonetici SET pass_sifre=MD5('${NEW_ADMIN_PASS}') WHERE user_adi='admin';" 2>/dev/null
  ok "Admin paroli değiştirildi"
fi

# ============================================================
# 7) SSL (Let's Encrypt)
# ============================================================
if [[ "$RUN_CERTBOT" == "1" ]]; then
  if [[ -f "/etc/letsencrypt/live/${DOMAIN}/fullchain.pem" ]]; then
    ok "SSL sertifikası zaten mevcut"
  else
    log "Let's Encrypt sertifikası alınıyor..."
    if certbot --apache -d "${DOMAIN}" -d "www.${DOMAIN}" \
         --redirect --agree-tos -m "${ADMIN_EMAIL}" --non-interactive; then
      ok "SSL kuruldu, HTTP→HTTPS redirect aktif"
    else
      warn "SSL alınamadı (DNS henüz yayılmamış olabilir). Sonra elle: certbot --apache -d ${DOMAIN} -d www.${DOMAIN}"
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

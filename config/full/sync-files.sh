#!/bin/sh
# Sinkronisasi file dari volume read-only ke folder writable lokal

SRC_DIR="/var/lib/telegram-bot-api"
DST_DIR="/tmp/telegram-bot-api-copy"

mkdir -p "$DST_DIR"

# Copy semua file dan folder dari SRC ke DST (overwrite)
rsync -a --delete "$SRC_DIR/" "$DST_DIR/"

# Set permission agar bisa dibaca nginx
chmod -R o+r "$DST_DIR"

# Jalankan nginx dengan root directory di folder baru ini
exec nginx -g 'daemon off;'


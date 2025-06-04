#!/bin/sh
# Set permission supaya file bisa dibaca oleh nginx

echo "[init] Setting read permissions in /var/lib/telegram-bot-api..."
chmod -R o+r /var/lib/telegram-bot-api || echo "[init] Warning: Gagal chmod"

echo "[init] Done."


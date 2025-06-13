#!/usr/bin/env bash

USERNAME="$1"
PASSWORD="$2"
EXPIRED="$3"

limitip="3"
limitquota="100"

if [[ -z "$USERNAME" || -z "$PASSWORD" || -z "$EXPIRED" ]]; then
    echo "Usage: $0 <username> <password> <expired_days>"
    exit 1
fi

expect <<EOF | sed -r 's/\x1B\[[0-9;]*[a-zA-Z]//g' | awk '/SHADOWSOCKS/,/^_{10,}$/'
set timeout 10
set env(TERM) xterm

set username "$USERNAME"
set password "$PASSWORD"
set expired "$EXPIRED"
set limitip "$limitip"
set limitquota "$limitquota"

spawn addss

expect {
    -re "(?i)User.*:.*" { send "\$username\r" }
}

expect {
    -re "(?i)Expired.*:.*" { send "\$expired\r" }
}

expect {
    -re "(?i)Limit User.*GB.*:.*" { send "\$limitquota\r" }
}

# Tunggu output sukses
expect {
    -re "(?i)Press any key.*" {
        sleep 1
        send "\003"   ;# CTRL+C untuk keluar dari menu
    }
}

expect eof
EOF
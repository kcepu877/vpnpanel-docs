
# VPN Telegram Panel Documentation

### Features
| Tunnel | Code | Action Locally | Action Remotely |
|--|--|--|--|
| SSH/OpenVPN | `sshovpn` | `info` | `create`, `extend`,<br/>  `checklog`,<br/> `lock`, `unlock` |
| SoftetherVPN | `sevpn` | `info` | `create`, `extend`,<br/> `checklog`,<br/> `lock`, `unlock` |
| VMess | `vmess` | `info` | `create`, `extend`,<br/> `checklog`,<br/> `lock`, `unlock` |
| VLess | `vless` | `info` | `create`, `extend`,<br/> `checklog`,<br/> `lock`, `unlock` |
| Trojan | `trojan` | `info` | `create`, `extend`,<br/> `checklog`,<br/> `lock`, `unlock` |
| Shadowsocks | `ssocks` | `info` | `create`, `extend`,<br/> `checklog`,<br/> `lock`, `unlock` |
| Socks5 | `socks5` | `info` | `create`, `extend`,<br/> `checklog`,<br/> `lock`, `unlock` |

| Action | Details |
|--|--|
**`create` | Used to create tunnel accounts
**`extend` | Used to extend the active period of a tunnel account
*`info` | Check account details based on bot database
**`checklog` | Check user login on server
**`lock` | Lock tunnel account
**`unlock` | Unlock tunnel account

> *Locally : *No connection to server required*
> **Remotely : *Requires connection to server*

### Bash Executioner

File PATH

```bash
/etc/gegevps/bin/telegram-<CODE>-<ACTION>.sh
```

*example*: 

```bash
# VMess Create Account
/etc/gegevps/bin/telegram-vmess-create.sh
```
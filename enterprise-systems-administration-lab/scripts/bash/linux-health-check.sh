#!/usr/bin/env bash
set -euo pipefail
hostnamectl
uptime
free -h
df -h
systemctl --failed || true
ss -tulpn
journalctl -p err -n 50 --no-pager || true

#!/usr/bin/env bash
set -euo pipefail
out="evidence-$(hostname)-$(date +%Y%m%d%H%M%S).txt"; { date; uname -a; uptime; df -h; free -m; systemctl --failed --no-pager; journalctl -p err -n 100 --no-pager; } > "$out"; echo "$out"

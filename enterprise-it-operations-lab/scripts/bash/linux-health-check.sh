#!/usr/bin/env bash
set -euo pipefail
THRESHOLD="${1:-85}"
echo "timestamp=$(date --iso-8601=seconds)"
echo "hostname=$(hostname -f 2>/dev/null || hostname)"
echo "uptime=$(uptime -p)"
echo "load=$(awk '{print $1,$2,$3}' /proc/loadavg)"
echo "memory:"; free -m
echo "filesystems:"
df -P -x tmpfs -x devtmpfs | awk -v t="$THRESHOLD" 'NR==1{print;next}{gsub("%","",$5); print; if($5>=t) warning=1} END{exit warning}' || { echo "WARNING: filesystem usage exceeded ${THRESHOLD}%"; exit 2; }
echo "failed_services:"; systemctl --failed --no-legend || true

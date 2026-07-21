#!/usr/bin/env bash
set -euo pipefail
SERVICE="${1:?service name required}"
PORT="${2:?port required}"
if ! systemctl is-active --quiet "$SERVICE"; then echo "CRITICAL: $SERVICE is not active"; exit 2; fi
if ! ss -lnt | awk '{print $4}' | grep -Eq "[:.]${PORT}$"; then echo "CRITICAL: port $PORT is not listening"; exit 2; fi
echo "OK: $SERVICE active and port $PORT listening"

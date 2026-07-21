#!/usr/bin/env bash
set -euo pipefail
out=support-logs-$(date +%Y%m%d%H%M); mkdir -p "$out"; journalctl -n 500 > "$out/journal.txt"; dmesg > "$out/dmesg.txt"; tar -czf "$out.tar.gz" "$out"

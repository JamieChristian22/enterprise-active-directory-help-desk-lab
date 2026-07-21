#!/usr/bin/env bash
set -euo pipefail
out=${1:-config-backup.tar.gz}
tar -czf "$out" /etc/hosts /etc/resolv.conf 2>/dev/null || true

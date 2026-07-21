#!/usr/bin/env bash
set -euo pipefail
svc=${1:?service required}
systemctl is-active "$svc" && systemctl status "$svc" --no-pager

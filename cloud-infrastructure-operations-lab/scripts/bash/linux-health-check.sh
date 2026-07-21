#!/usr/bin/env bash
set -euo pipefail
echo '=== uptime ==='; uptime
echo '=== disk ==='; df -h
echo '=== memory ==='; free -m
echo '=== failed services ==='; systemctl --failed --no-pager || true

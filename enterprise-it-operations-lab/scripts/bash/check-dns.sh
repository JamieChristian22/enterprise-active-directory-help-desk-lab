#!/usr/bin/env bash
set -euo pipefail
name="${1:-example.com}"; getent ahosts "$name" >/dev/null && echo "DNS_OK $name" || { echo "DNS_FAIL $name"; exit 1; }

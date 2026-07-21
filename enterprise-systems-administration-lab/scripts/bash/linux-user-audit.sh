#!/usr/bin/env bash
set -euo pipefail
getent passwd | awk -F: '$3>=1000 {print $1,$3,$6,$7}'
getent group sudo || true
lastlog

#!/usr/bin/env bash
set -euo pipefail
path="${1:-/var}"; find "$path" -xdev -type f -printf '%s %p
' 2>/dev/null | sort -nr | head -20

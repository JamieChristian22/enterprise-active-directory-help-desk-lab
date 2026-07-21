#!/usr/bin/env bash
set -euo pipefail
file="${1:?log file required}"; test -f "$file"; gzip -c "$file" > "$file.$(date +%Y%m%d%H%M%S).gz"; : > "$file"

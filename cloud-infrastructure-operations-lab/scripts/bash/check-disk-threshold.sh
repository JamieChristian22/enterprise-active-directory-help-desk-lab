#!/usr/bin/env bash
set -euo pipefail
threshold=${1:-85}
df -P | awk -v t="$threshold" 'NR>1 {gsub(/%/,"",$5); if($5>=t) print $0}'

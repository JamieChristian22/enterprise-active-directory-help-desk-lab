#!/usr/bin/env bash
set -euo pipefail
path=${1:-/var}; find "$path" -type f -size +100M -printf '%s %p\n' 2>/dev/null | sort -nr | head

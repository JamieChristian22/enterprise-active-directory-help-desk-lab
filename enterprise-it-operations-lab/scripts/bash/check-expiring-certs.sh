#!/usr/bin/env bash
set -euo pipefail
host="${1:?host required}"; port="${2:-443}"; echo | openssl s_client -servername "$host" -connect "$host:$port" 2>/dev/null | openssl x509 -noout -subject -issuer -dates

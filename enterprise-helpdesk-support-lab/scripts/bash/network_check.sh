#!/usr/bin/env bash
set -euo pipefail
ip addr
ip route
getent hosts microsoft.com
curl -I --max-time 10 https://www.microsoft.com

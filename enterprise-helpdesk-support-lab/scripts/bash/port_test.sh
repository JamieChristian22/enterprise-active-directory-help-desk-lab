#!/usr/bin/env bash
set -euo pipefail
host=${1:-localhost}; port=${2:-443}; timeout 5 bash -c "</dev/tcp/$host/$port" && echo open || echo closed

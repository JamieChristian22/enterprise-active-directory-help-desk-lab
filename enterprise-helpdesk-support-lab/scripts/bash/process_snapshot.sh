#!/usr/bin/env bash
set -euo pipefail
ps aux --sort=-%cpu | head -20
ps aux --sort=-%mem | head -20

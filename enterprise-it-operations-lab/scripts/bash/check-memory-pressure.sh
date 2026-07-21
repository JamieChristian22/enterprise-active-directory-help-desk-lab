#!/usr/bin/env bash
set -euo pipefail
free -m; vmstat 1 5

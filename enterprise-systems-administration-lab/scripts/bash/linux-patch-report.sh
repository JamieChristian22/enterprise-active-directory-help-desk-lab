#!/usr/bin/env bash
set -euo pipefail
if command -v apt >/dev/null; then apt list --upgradable 2>/dev/null; elif command -v dnf >/dev/null; then dnf check-update || true; fi

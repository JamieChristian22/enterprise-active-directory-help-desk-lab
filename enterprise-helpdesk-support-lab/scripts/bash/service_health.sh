#!/usr/bin/env bash
set -euo pipefail
systemctl --failed || true
systemctl status ssh --no-pager || true

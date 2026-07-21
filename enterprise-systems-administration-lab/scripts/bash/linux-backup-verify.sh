#!/usr/bin/env bash
set -euo pipefail
TARGET=${1:-/backup/restore-test}
test -d "$TARGET"
find "$TARGET" -type f -print0 | xargs -0 sha256sum

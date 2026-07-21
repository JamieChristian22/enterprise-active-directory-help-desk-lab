#!/usr/bin/env bash
set -euo pipefail
grep -E '^(PermitRootLogin|PasswordAuthentication|PubkeyAuthentication|MaxAuthTries)' /etc/ssh/sshd_config || true

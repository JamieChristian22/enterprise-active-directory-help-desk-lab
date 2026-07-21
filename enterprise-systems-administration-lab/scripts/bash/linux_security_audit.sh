#!/usr/bin/env bash
set -euo pipefail
printf 'host,check,status,detail
'
host=$(hostname -f 2>/dev/null || hostname)
sshd=$(sshd -T 2>/dev/null | awk '/^permitrootlogin/{print $2}' || true)
[[ "$sshd" == "no" ]] && status=PASS || status=REVIEW
printf '%s,ssh_root_login,%s,%s
' "$host" "$status" "${sshd:-unknown}"
updates=$(command -v apt >/dev/null && apt list --upgradable 2>/dev/null | tail -n +2 | wc -l || echo 0)
printf '%s,pending_updates,INFO,%s
' "$host" "$updates"

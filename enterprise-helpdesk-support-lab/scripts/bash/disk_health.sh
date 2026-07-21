#!/usr/bin/env bash
set -euo pipefail
df -h
lsblk -o NAME,SIZE,TYPE,FSTYPE,MOUNTPOINTS

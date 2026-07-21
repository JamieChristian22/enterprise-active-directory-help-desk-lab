# Runbook: Linux Disk Space Alert

1. Run `df -hT` and `df -ih`.
2. Identify growth with `du -xhd1 / | sort -h`.
3. Check logs, package caches, deleted-open files, and application data.
4. Rotate or archive data according to retention policy.
5. Never delete unknown files to restore service.
6. Expand the volume when growth is legitimate and sustained.
7. Confirm alert recovery and record capacity trend.

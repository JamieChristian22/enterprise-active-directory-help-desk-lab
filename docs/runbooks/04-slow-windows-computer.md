# Runbook: Slow Windows Computer

1. Record when the issue began and whether it affects all applications.
2. Check uptime, CPU, memory, disk active time, free storage, and startup apps.
3. Run Windows Update and endpoint-protection status checks.
4. Review recent application installs and System event errors.
5. Run `sfc /scannow` and `DISM /Online /Cleanup-Image /RestoreHealth` when corruption is suspected.
6. Check disk health with `Get-PhysicalDisk` and `chkdsk /scan`.
7. Reboot only after saving user work and documenting the change.
8. Escalate failing storage, repeated blue screens, malware alerts, or hardware shortages.

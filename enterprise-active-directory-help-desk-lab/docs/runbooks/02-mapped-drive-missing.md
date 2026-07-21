# Runbook: Mapped Drive Missing

1. Confirm the expected path and whether the user is on LAN or VPN.
2. Test `Resolve-DnsName NS-FS01` and `Test-NetConnection NS-FS01 -Port 445`.
3. Browse directly to `\NS-FS01\Public`.
4. Run `whoami /groups` to confirm security-group membership.
5. Run `gpresult /r` and `gpupdate /force`.
6. Remove stale mapping with `net use <drive>: /delete`.
7. Reconnect using `net use <drive>: \NS-FS01\<share> /persistent:yes`.
8. Escalate if SMB port 445 is blocked, the share is offline, or permissions are incorrect.

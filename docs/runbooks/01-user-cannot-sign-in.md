# Runbook: User Cannot Sign In

## Triage sequence
1. Determine whether the issue affects Windows, VPN, Microsoft 365, or all services.
2. Confirm username format, keyboard layout, Caps Lock, and network connection.
3. Test whether another user can sign in to the same device.
4. Check AD account status: enabled, locked, expired, and password state.
5. Verify the client time is within five minutes of the domain controller.
6. Run `ipconfig /all`, `nslookup northstar.local`, and `Test-ComputerSecureChannel`.
7. Review Event Viewer under System and Security logs.
8. Reset credentials only after identity verification.
9. Escalate repeated lockouts, broken trust relationships, or widespread failures.

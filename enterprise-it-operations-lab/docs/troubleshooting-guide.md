# Troubleshooting Guide

## Method
1. Confirm scope, impact, start time, and recent changes.
2. Establish a known-good comparison.
3. Check monitoring, logs, dependencies, capacity, identity, DNS, and network path.
4. Change one variable at a time.
5. Record commands, timestamps, observations, and outcomes.
6. Restore service first, then complete root-cause analysis.

## Common diagnostic commands
### Windows
```powershell
Get-Service
Get-WinEvent -LogName System -MaxEvents 50
Resolve-DnsName example.internal
Test-NetConnection server01 -Port 443
repadmin /replsummary
dcdiag /v
```

### Linux
```bash
systemctl --failed
journalctl -p err -S today
df -h
free -m
ss -tulpn
dig example.internal
curl -vk https://service.example.internal/health
```

## Evidence standard
Every escalated issue should include impact, affected users, timestamps, screenshots or log excerpts, troubleshooting already performed, and a precise escalation request.

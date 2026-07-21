# Escalation Matrix

| Condition | Destination | Required evidence |
|---|---|---|
| Domain controller, DHCP, DNS, file server | Infrastructure | timestamps, affected scope, logs, ping/nslookup/ipconfig output |
| Suspicious login, malware, phishing | Security Operations | sender, headers, hashes, device ID, isolation status |
| Exchange transport or tenant-wide issue | Microsoft 365 Admin | message trace, service health, affected recipients |
| Application defect | Application Support | version, steps to reproduce, screenshots, logs |
| Hardware failure | Endpoint Engineering | asset tag, diagnostics, warranty, replacement need |

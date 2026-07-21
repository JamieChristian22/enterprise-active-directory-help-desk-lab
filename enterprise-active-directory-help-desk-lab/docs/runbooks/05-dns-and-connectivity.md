# Runbook: DNS and Connectivity

1. Verify link status and Wi-Fi or Ethernet connection.
2. Run `ipconfig /all` and confirm a valid address, gateway, and internal DNS server.
3. Test the default gateway, `10.20.0.10`, and an external IP.
4. Compare `nslookup NS-DC01` with `nslookup example.com`.
5. Renew DHCP with `ipconfig /release` and `ipconfig /renew` when appropriate.
6. Clear cache with `ipconfig /flushdns`.
7. Review proxy and VPN settings.
8. Escalate APIPA addresses, scope exhaustion, VLAN issues, or multiple-user impact.

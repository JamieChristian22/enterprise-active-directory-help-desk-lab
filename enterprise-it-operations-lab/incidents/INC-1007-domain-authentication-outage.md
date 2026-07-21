# Incident Report: Domain Authentication Outage

## Summary
On June 7, 2026, users experienced intermittent sign-in and name-resolution failures for 74 minutes.

## Impact
New logons, mapped drives, and two internal applications were affected. Existing sessions generally remained active.

## Timeline
- 09:02 monitoring alerted on DNS service failure.
- 09:08 incident declared P1.
- 09:17 clients redirected to healthy DNS resolver.
- 09:31 DNS service repaired on NS-DC01.
- 10:05 replication, authentication, and application checks passed.
- 10:16 incident closed.

## Root cause
A failed cumulative update left the DNS Server service disabled on NS-DC01. DHCP option ordering caused many clients to query the unhealthy resolver first.

## Corrective actions
- Add DNS service-state monitoring on both domain controllers.
- Enforce post-patch service validation.
- Test resolver failover quarterly.
- Update DHCP option ordering and client retry guidance.

# INC-001 — Domain Authentication Outage

## Impact
Users at one site experienced authentication delays and intermittent logon failures.

## Root Cause
A failed DNS forwarder change combined with replication backlog caused inconsistent domain-controller responses.

## Resolution
Rolled back the DNS change, corrected replication, validated SYSVOL and DNS health, and monitored authentication success.

## Prevention
Added pre-change DNS validation, replication health gates, and post-change authentication tests.

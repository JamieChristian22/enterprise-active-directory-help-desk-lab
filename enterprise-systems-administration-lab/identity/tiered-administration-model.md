# Tiered Administration Model
## Tier 0
Domain controllers, AD CS, Entra Connect, privileged identity systems. Admin accounts are isolated, MFA protected, and denied interactive logon to lower-tier systems.
## Tier 1
Member servers, virtualization hosts, backup servers, and management platforms.
## Tier 2
Endpoints, printers, and end-user support.
## Controls
Separate admin identities, privileged access workstations, just-in-time elevation, break-glass review, quarterly access certification, and event monitoring for privileged group changes.

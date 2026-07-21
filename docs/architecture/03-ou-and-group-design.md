# Organizational Unit and Group Design

```text
northstar.local
├── Northstar
│   ├── Users
│   │   ├── Finance
│   │   ├── Human Resources
│   │   ├── Operations
│   │   ├── IT
│   │   └── Disabled Users
│   ├── Computers
│   │   ├── Workstations
│   │   ├── Laptops
│   │   └── Quarantine
│   ├── Servers
│   ├── Service Accounts
│   └── Groups
```

## Naming standards

- User logon: first initial + last name, such as `jcarter`
- Workstation: `NS-WS-###`
- Laptop: `NS-LT-###`
- Security group: `SG-<Department>-<Resource>-<Access>`
- Distribution group: `DL-<Department>`

## Group strategy

The environment uses AGDLP:

1. User accounts belong to Global groups.
2. Global groups belong to Domain Local resource groups.
3. Domain Local groups receive permissions.

Example: `jcarter` → `GG-Finance-Users` → `DL-Finance-Share-RW` → Modify permission on `\\NS-FS01\Finance`.

# IP Address Plan

| Network | CIDR | Purpose | Gateway |
|---|---:|---|---|
| HQ Users | 10.20.10.0/24 | Corporate endpoints | 10.20.10.1 |
| HQ Servers | 10.20.20.0/24 | Windows and Linux servers | 10.20.20.1 |
| HQ Management | 10.20.30.0/24 | Admin workstations and tools | 10.20.30.1 |
| HQ Printers | 10.20.40.0/24 | Managed printers | 10.20.40.1 |
| HQ Guest | 10.20.50.0/24 | Internet-only guest Wi-Fi | 10.20.50.1 |
| AWS Private A | 10.60.10.0/24 | Application workloads | VPC router |
| AWS Private B | 10.60.20.0/24 | Application workloads | VPC router |
| AWS Public A | 10.60.110.0/24 | NAT/load-balancing tier | VPC router |
| AWS Public B | 10.60.120.0/24 | NAT/load-balancing tier | VPC router |

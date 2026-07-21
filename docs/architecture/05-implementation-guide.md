# Active Directory Lab Implementation Guide

## Platform

Build this lab only in Hyper-V, VirtualBox, VMware Workstation, or another isolated test environment. Use one Windows Server evaluation VM and two Windows 11 evaluation VMs.

## Build sequence

1. Create an isolated NAT network for `10.20.0.0/16`.
2. Configure `NS-DC01` with static address `10.20.0.10/24`, gateway `10.20.0.1`, and preferred DNS `10.20.0.10`.
3. Install AD DS and DNS, then create the forest `northstar.local`.
4. Add the OU, group, and user structure defined in the architecture documents.
5. Configure DHCP scope `10.20.10.100–10.20.10.220`, router `10.20.10.1`, and DNS server `10.20.0.10`.
6. Join `NS-HD01` and `NS-WS101` to the domain.
7. Create department shares on `NS-FS01` and apply the permissions matrix.
8. Create and link the documented Group Policy Objects.
9. Run the validation checklist and retain only genuine screenshots from your own lab.

## Acceptance criteria

- Domain users authenticate from a joined workstation.
- DNS resolves all documented internal hosts.
- DHCP issues addresses from the approved scope.
- Department users can access only approved shares.
- Password, lockout, mapped-drive, printer, and event-log procedures work as documented.
- Scripts complete without storing plaintext passwords.

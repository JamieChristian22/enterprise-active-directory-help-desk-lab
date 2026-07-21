# Lab Evidence Guide

This repository does **not** claim fabricated screenshots as proof. Use this checklist to add genuine evidence after performing the build in your own isolated lab.

Capture the following with the date, system name, and relevant result visible while hiding passwords and sensitive data:

1. Server Manager showing AD DS and DNS installed on `NS-DC01`.
2. Active Directory Users and Computers showing the Northstar OU structure.
3. A user account successfully created through PowerShell.
4. Account unlock and password-reset validation.
5. `gpresult /h` output proving the workstation baseline applied.
6. DNS forward lookup for `NS-FS01.northstar.local`.
7. DHCP lease for a domain workstation.
8. Department share access allowed for an approved user.
9. Access denied for an unauthorized department user.
10. Event Viewer evidence used in a ticket diagnosis.
11. Print server queue and successful test page.
12. Ticket dashboard showing the 50-ticket dataset.

Use filenames like `EVID-01-ad-ds-role.png`. Add a caption explaining what was tested and what the result proves.

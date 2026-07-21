# Restore Test: Department File Share

- Date: June 25, 2026
- Source: NS-FS01 Finance share
- Recovery point: June 25, 02:00
- Target: isolated restore folder
- Objective: restore 2.4 GiB and validate permissions and checksums
- Result: completed in 38 minutes; target RTO 4 hours
- Data loss: none relative to selected recovery point
- Validation: 50 sampled files opened; hashes matched; ACLs preserved
- Action: add automated checksum report to future tests

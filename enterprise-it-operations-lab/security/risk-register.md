# Risk Register

| ID | Risk | Likelihood | Impact | Mitigation | Owner |
|---|---|---|---|---|---|
| R-01 | Legacy application requires broad SMB access | Medium | High | Segment server, restrict source hosts, migration plan | Infrastructure |
| R-02 | Single carrier at Site B | Medium | High | Add secondary circuit and tested failover | Network |
| R-03 | Stale privileged groups | Low | Critical | Quarterly review and automated reporting | Security |
| R-04 | Rapid log growth on application server | Medium | Medium | Retention limits and capacity alerts | Cloud Operations |
| R-05 | Backup credential expiration | Low | High | Managed identity or monitored credential lifecycle | Infrastructure |

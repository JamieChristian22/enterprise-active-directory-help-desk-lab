# Kubernetes Operations Guide
## Scope
EKS and AKS cluster health, node pools, workloads, ingress, autoscaling, secrets, upgrades, and incident response.
## Daily checks
1. Verify API server reachability and node Ready status.
2. Review CrashLoopBackOff, Pending, ImagePullBackOff, and OOMKilled workloads.
3. Check HPA targets, pod disruption budgets, ingress health, and certificate age.
4. Review control-plane audit alerts and privileged workload findings.
## Upgrade process
Validate deprecations, snapshot manifests, upgrade non-production first, cordon and drain nodes, replace node pools, execute smoke tests, then record change evidence.

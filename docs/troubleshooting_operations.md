# Operational Troubleshooting & Diagnostics Guide

## Diagnostic Commands Reference
* **Container Logs:** `kubectl logs -l app=cloudpath-app -n cloudpath --tail=100`
* **Cluster Events:** `kubectl get events -n cloudpath --sort-by='.metadata.creationTimestamp'`
* **Pod Health & Spec Details:** `kubectl describe pods -l app=cloudpath-app -n cloudpath`
* **Port-Forward Debugging:** `kubectl port-forward svc/cloudpath-service 8080:3000 -n cloudpath`

## Observed Failure Scenarios & Mitigations
1. **Namespace Dependency Order:** 
   * *Issue:* Applying manifests simultaneously caused `namespaces "cloudpath" not found` errors.
   * *Remediation:* Enforce explicit deployment ordering or bundle manifests with namespace declaration applied first.
2. **Docker Daemon Communication:**
   * *Issue:* `failed to connect to the docker API` during local builds.
   * *Remediation:* Ensure Docker Desktop background service is fully in `running` state before executing build toolchains.
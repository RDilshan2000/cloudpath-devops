# CloudPath — Automated Cloud-Native Delivery Platform

CloudPath is an end-to-end DevOps deployment platform demonstrating modern continuous integration, containerization, GitOps-ready orchestration, and automated infrastructure provisioning for containerized microservices.

---

## Key Capabilities

* **Microservice Layer:** Node.js Express REST API with structured JSON logging to stdout and automated `/health` probes.
* **Container Security & Optimization:** Multi-stage, non-root Alpine container images with vulnerability auditing via Trivy.
* **Continuous Integration:** GitHub Actions pipelines covering linting, testing, image builds, and container vulnerability gating.
* **Container Orchestration:** Declarative Kubernetes manifests (Deployments, Services, ConfigMaps, Secrets) with zero-downtime rolling update strategies.
* **Infrastructure as Code (IaC):** Modular Terraform configurations managing local/cloud environments with reproducible state.
* **Observability:** Application and platform metric scraping with Prometheus and visual monitoring dashboards via Grafana.

---

## System Architecture

Detailed architecture specifications and pipeline flow diagrams are maintained under [`docs/architecture.md`](docs/architecture.md).

---

## Tech Stack & Tooling

| Domain | Technology / Tool |
| :--- | :--- |
| **Runtime & Framework** | Node.js (v20+), Express |
| **Container Engine** | Docker Engine, Docker Desktop |
| **Security Scanning** | Trivy (Aqua Security) |
| **Orchestration** | Kubernetes (Minikube / Kind) |
| **CI/CD Automation** | GitHub Actions |
| **Infrastructure as Code**| Terraform |
| **Monitoring** | Prometheus, Grafana |

---

## Getting Started

### 1. Local Application Setup

Run the application directly on the host machine:

```powershell
cd app
npm install
node server.js

Implementation Roadmap
[x] Core Microservice: REST API scaffolding, structured logging, and health endpoint implementation.

[x] Container Engineering: Multi-layer Alpine containerization, non-root user execution, and Trivy security scanning.

[x] CI Pipeline: Automated linting, test suite execution, Docker builds, and security scans via GitHub Actions.

[x] Kubernetes Orchestration: Cluster manifests setup, liveness/readiness probes, and ingress routing.

[x] Infrastructure Provisioning: Modular Terraform templates for reproducible infrastructure.

[ ] Release Management: Rolling deployments, automated zero-downtime rollouts, and instant rollbacks.

[ ] Observability Stack: Centralized metric collection and visualization dashboards.
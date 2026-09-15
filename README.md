# CloudPath DevOps Internship Project

An end-to-end DevOps pipeline for containerizing, deploying, securing, and monitoring a lightweight microservice.

---

## Tool Versions & Environment
* **OS:** Windows 11 (PowerShell)
* **Runtime:** Node.js v20+ / Express
* **Containerization:** Docker Desktop
* **Orchestration:** Kubernetes (Minikube / Kind)
* **CI/CD:** GitHub Actions
* **IaC:** Terraform
* **Security Scanner:** Trivy

---

## High-Level Architecture
Detailed architecture documentation is available under [`docs/architecture.md`](docs/architecture.md).

---

## Local Development & Health Check
Run the API locally:
```powershell
cd app
npm install
node server.js
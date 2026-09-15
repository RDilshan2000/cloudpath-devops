# CloudPath DevOps Architecture

```mermaid
flowchart LR
    Dev[Developer] -->|Git Push| GH[GitHub Repository]
    
    subgraph CI["CI Pipeline (GitHub Actions)"]
        GH --> Lint[Lint & Test]
        Lint --> Build[Docker Build]
        Build --> Sec[Trivy Security Scan]
    end

    subgraph CD["Local K8s Deployment"]
        Sec --> Minikube[Minikube / Kind Cluster]
        Minikube --> Pods[App Pods - Node.js]
        Pods --> Svc[Kubernetes Service]
    end

    subgraph Monitoring["Observability"]
        Pods --> Prom[Prometheus / Metrics]
        Prom --> Graf[Grafana Dashboard]
    end
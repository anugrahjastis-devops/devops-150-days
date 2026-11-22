# 🗺️ Master DevOps Roadmap (Day 64 – Day 150)

> **Status:** Day 1 – Day 63 Completed ✅  
> **Repository:** https://github.com/anugrahjastis-devops/devops-150-days

---

## 🔹 Phase 1: Advanced CI/CD, Docker & DevSecOps (Day 64–75 · 12 Days)
- **Day 64:** GitHub Actions – Reusable Workflows (`workflow_call`) & Modular Pipeline Design
- **Day 65:** GitHub Environments (Dev, Staging, Prod), Protection Rules, Manual Approvals & Concurrency
- **Day 66:** Custom Composite Actions, Custom Actions & Workflow Permissions
- **Day 67:** Jenkins Setup (Dockerized Jenkins), Architecture, Plugins & Credentials
- **Day 68:** Jenkins Declarative Pipelines (`Jenkinsfile`), Stages, Agents & Environment Variables
- **Day 69:** Jenkins Multibranch Pipelines, Webhooks & Automated Build Triggers
- **Day 70:** Jenkins Shared Libraries, Artifact Management, Test Reports & Troubleshooting
- **Day 71:** Dockerfile Best Practices, Hadolint, Multi-Stage Builds & Non-root Users
- **Day 72:** Docker Buildx, Multi-Architecture Builds (`amd64`, `arm64`), Image Tagging
- **Day 73:** Trivy, Gitleaks, SBOM, Image Signing & Build Provenance
- **Day 74:** Capstone Part 1 – Full CI Pipeline (Lint + Build + Security Scan + SBOM)
- **Day 75:** Capstone Part 2 – Multi-Arch Registry Push (GHCR) + Release Notes + Pipeline Validation

---

## 🔹 Phase 2: Kubernetes Fundamentals to Production (Day 76–100 · 25 Days)
- **Day 76:** Kubernetes Architecture, Control Plane, Worker Nodes, `kind`/`minikube` & `kubectl`
- **Day 77:** Pods, Labels, Selectors & Multi-Container Patterns (Sidecar, Init Containers)
- **Day 78:** ReplicaSets & Deployments – Declarative Manifests & Scaling
- **Day 79:** Rolling Updates, Rollbacks & Deployment Strategies
- **Day 80:** Kubernetes Services – `ClusterIP`, `NodePort` & `LoadBalancer`
- **Day 81:** Ingress Controller, Host/Path Routing, TLS & `cert-manager`
- **Day 82:** ConfigMaps & Secrets – Application Configuration
- **Day 83:** PersistentVolumes, PVCs & StorageClasses
- **Day 84:** StatefulSets & Headless Services
- **Day 85:** Liveness, Readiness & Startup Probes
- **Day 86:** Requests, Limits, QoS, LimitRanges & ResourceQuotas
- **Day 87:** HPA, Metrics Server & Autoscaling Load Tests
- **Day 88:** Namespaces, RBAC, Roles, ClusterRoles & ServiceAccounts
- **Day 89:** NetworkPolicies, CNI Concepts & Pod-to-Pod Traffic Isolation
- **Day 90:** Node Affinity, Pod Affinity, Taints & Tolerations
- **Day 91:** Jobs & CronJobs
- **Day 92:** Helm Basics – Community Charts & Installation
- **Day 93:** Custom Helm Charts – `Chart.yaml`, `values.yaml` & Templates
- **Day 94:** Helm Releases, Upgrades, Rollbacks & Environment Values
- **Day 95:** Kustomize – Base & Overlays
- **Day 96:** Troubleshooting – `CrashLoopBackOff`, `ImagePullBackOff`, DNS & Networking
- **Day 97:** Kubernetes Internals – API Server, Scheduler, Controller Manager & `etcd`
- **Day 98:** CNI, CSI, CoreDNS, Cluster Upgrades, Node Maintenance & Backup/Restore
- **Day 99:** Capstone – Multi-Tier Application (Frontend + API + DB) on Kubernetes
- **Day 100:** Capstone – Helm, Ingress, Autoscaling, Probes, RBAC & Architecture Review

---

## 🔹 Phase 3: Infrastructure as Code – Terraform & Ansible (Day 101–120 · 20 Days)
- **Day 101:** Terraform Setup, Providers, HCL & First Resource
- **Day 102:** Input Variables, Locals, Outputs & `terraform.tfvars`
- **Day 103:** Terraform State, State Commands & Drift Detection
- **Day 104:** Remote Backend, State Locking & State Security
- **Day 105:** Data Sources, `count`, `for_each` & Dynamic Blocks
- **Day 106:** Provisioners, Lifecycle Rules & Resource Dependencies
- **Day 107:** Reusable Terraform Modules – Networking & Compute
- **Day 108:** Workspaces & Multi-Environment Directory Structures
- **Day 109:** Terraform CI Automation – `fmt`, `validate`, `plan` & Approval
- **Day 110:** IaC Security – `tfsec`, Checkov, Import, Provider Locking & State Recovery
- **Day 111:** Ansible Setup, Inventory, SSH & Ad-Hoc Commands
- **Day 112:** Idempotent Playbooks – Tasks, Variables, Loops & Conditionals
- **Day 113:** Handlers, Notify & Jinja2 Templates
- **Day 114:** Reusable Ansible Roles & Ansible Galaxy
- **Day 115:** Ansible Vault, Tags & Error Handling
- **Day 116:** Dynamic Inventories & Multi-Host Server Hardening
- **Day 117:** Nginx, Reverse Proxy & Web Server Automation
- **Day 118:** Terraform Outputs with Ansible Inventory
- **Day 119:** Ansible Testing, Molecule Basics & Troubleshooting
- **Day 120:** Capstone – Terraform Infrastructure Provisioning + Ansible Configuration

---

## 🔹 Phase 4: AWS Production Cloud & GitOps (ArgoCD) (Day 121–135 · 15 Days)
- **Day 121:** AWS IAM – Users, Groups, Roles, Policies, OIDC & Least Privilege
- **Day 122:** VPC, Public/Private Subnets, Route Tables, IGW, NAT & VPC Endpoints
- **Day 123:** EC2, Security Groups, NACL, Key Pairs, User Data & Systems Manager
- **Day 124:** S3, Versioning, Lifecycle, Encryption, KMS & Terraform Remote State
- **Day 125:** ECR – Container Registry, Image Scanning & CI OIDC Integration
- **Day 126:** AWS EKS Architecture, Managed Node Groups, IAM Integration & Cluster Provisioning
- **Day 127:** Terraform – AWS VPC, EC2, Security Groups & Infrastructure Automation
- **Day 128:** AWS Production Services – ALB, Auto Scaling Groups, RDS, Route 53 & ACM
- **Day 129:** AWS Monitoring & Auditing – CloudWatch, CloudTrail & Cost Explorer
- **Day 130:** Production EKS – Application Deployment, Networking, Upgrades & Troubleshooting
- **Day 131:** GitOps Principles, ArgoCD Architecture & Installation
- **Day 132:** Connecting Git Repository to ArgoCD, Auto-Sync, Self-Heal & Prune
- **Day 133:** Multi-Environment GitOps, ApplicationSets, App-of-Apps & Sync Waves
- **Day 134:** Image Updates, GitOps Rollbacks, Sealed Secrets & External Secrets
- **Day 135:** Capstone – CI Pipeline to ECR + ArgoCD CD to Kubernetes/EKS

---

## 🔹 Phase 5: Python, Networking, Observability & SRE (Day 136–145 · 10 Days)
- **Day 136:** Python for DevOps – Variables, Conditions, Loops, Functions & Scripts
- **Day 137:** Python Automation – Files, JSON, APIs, Exception Handling & Boto3
- **Day 138:** Networking Fundamentals – TCP/IP, DNS, Ports, Subnetting & Routing
- **Day 139:** HTTP/HTTPS, TLS, Load Balancing, VPC Networking & Troubleshooting
- **Day 140:** Observability – Metrics, Logs, Traces, Prometheus Architecture & Node Exporter
- **Day 141:** PromQL, CPU/Memory Monitoring, Pod Restarts & HTTP Error Rates
- **Day 142:** Grafana Dashboards, Alertmanager & Alert Rules
- **Day 143:** Loki, Promtail, LogQL, OpenTelemetry & Distributed Tracing Introduction
- **Day 144:** SRE – SLIs, SLOs, SLAs, Error Budgets, Incident Management, RCA & Postmortems
- **Day 145:** Reliability – Chaos/Failure Drills, Disaster Recovery, Capacity Planning & Cost Optimization

---

## 🔹 Phase 6: Mega Capstone & Job Preparation (Day 146–150 · 5 Days)
- **Day 146:** Mega Project Part 1 – Terraform AWS Infrastructure + Repository Architecture
- **Day 147:** Mega Project Part 2 – Dockerized Application + GitHub Actions/Jenkins CI + Trivy
- **Day 148:** Mega Project Part 3 – Kubernetes + Helm + ArgoCD GitOps + EKS Deployment
- **Day 149:** Mega Project Part 4 – Prometheus, Grafana, Loki, Alerts, Runbooks & Portfolio Audit
- **Day 150:** Grand Finale – End-to-End Production Showcase, Interview Preparation & LinkedIn Milestone

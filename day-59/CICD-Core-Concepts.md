# Day 59: CI/CD Core Concepts, SDLC & Deployment Strategies

Welcome to Day 59 of my **150-Day DevOps Mastery Challenge**! After successfully mastering Docker (including multi-container orchestration with Docker Compose and production-grade multi-stage build optimization), I have officially stepped into **Phase 1: CI/CD Pipelines (GitHub Actions & Jenkins)**.

Today's focus was on understanding the core engineering foundations of modern software delivery and deployment strategies.

---

## 📌 Key Topics Covered

### 1. Traditional SDLC vs. Modern CI/CD
* **The Problem (Integration Hell):** In traditional waterfall/manual models, developers worked in silos for months, merging code at the very end, leading to massive conflicts. Operations teams manually deployed updates via SSH, causing frequent human errors and downtime.
* **The Solution (CI/CD):** Automated pipelines that build, test, and ship code continuously and reliably.

### 2. CI vs. CD (Delivery) vs. CD (Deployment)
* **Continuous Integration (CI):** Automated building, testing, and linting upon every `git push` to ensure code integrity.
* **Continuous Delivery (CD - Delivery):** Automatically pushes tested builds to staging/QA environments; requires a **manual approval** step before releasing to production.
* **Continuous Deployment (CD - Deployment):** Fully automated pipeline where code passing all automated tests goes straight to **live production** with zero human intervention.

### 3. The 6-Stage Production Pipeline Architecture
1. **Source Stage:** Developer pushes code (`git push`) $\rightarrow$ Webhook triggers the pipeline.
2. **Build Stage:** Compiling source code or building Docker images.
3. **Test Stage:** Running unit tests, integration tests, and linters (Fail-Fast mechanism).
4. **Security & Quality Stage (DevSecOps):** Scanning code quality (SonarQube) and image vulnerabilities (Trivy).
5. **Artifact Push Stage:** Storing versioned Docker images in a registry (Docker Hub / AWS ECR).
6. **Deploy Stage:** Deploying the updated artifact to target servers or Kubernetes clusters.

### 4. Production Deployment Strategies
* **Recreate Strategy:** Stops all old instances before starting new ones (causes downtime; used only in dev).
* **Rolling Update (Kubernetes Default):** Gradually replaces old containers with new ones one-by-one for zero downtime.
* **Blue-Green Deployment:** Maintains two identical production environments (Blue and Green). Traffic is instantly switched via load balancer; enables instant rollbacks.
* **Canary Deployment:** Releases the new version to a small subset of users (e.g., 5-10%) before rolling it out globally.

---

## 🚀 Next Steps (Day 60)
* Writing and executing my very first automated **GitHub Actions Workflow** (`.github/workflows/main.yml`).

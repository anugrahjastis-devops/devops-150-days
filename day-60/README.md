# Day 60: Introduction to CI/CD & First Live GitHub Actions Pipeline 🚀

Welcome to Day 60 of my `#150DaysOfDevOps` challenge! Today marks the official start of Phase 2, moving from containerization (Docker) to **Continuous Integration and Continuous Deployment (CI/CD)** automation.

---

## 🛠️ What I Learned Today
1. **CI/CD Fundamentals:** Understanding traditional SDLC vs. modern CI/CD, eliminating "integration hell", and comparing Continuous Integration, Delivery, and Deployment.
2. **Deployment Strategies:** Deep-dive into Recreate, Rolling Updates, Blue-Green, and Canary deployment patterns.
3. **GitHub Actions Core Concepts:** 
   - **Workflows:** Automated multi-step processes defined in YAML.
   - **Events:** Triggers that initiate workflows (e.g., `push`, `pull_request`).
   - **Jobs & Steps:** Parallel vs. sequential execution blocks on isolated runners.
   - **Runners:** On-demand cloud virtual machines (`ubuntu-latest`).

---

## 💻 Hands-On Implementation: First Live Workflow
Created and successfully executed a live GitHub Actions workflow (`.github/workflows/day60-first-workflow.yml`) featuring:
- Automatic code checkout using `actions/checkout@v4`.
- System inspection and environment validation on a cloud runner.
- Successful execution status with all automated checks passing in under 20 seconds! ✅

---

## 📂 Repository Link
- [GitHub Repository - devops-150-days](https://github.com/anugrahjastis-devops/devops-150-days)

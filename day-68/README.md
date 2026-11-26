# Day 68: Jenkins Pipelines (`Jenkinsfile`), Stages, Agents & Credentials Binding

## Concepts & Real-World Use-Case
- **Pipeline-as-Code (`Jenkinsfile`):** Stores CI/CD workflow definitions inside Git for version control, code review, and reproducibility across environments.
- **Declarative vs Scripted Pipelines:** Declarative pipelines (`pipeline { ... }`) enforce clear structure (`agent`, `stages`, `steps`, `post`) for standard production workflows, while Scripted pipelines (`node { ... }`) offer full Groovy flexibility.
- **Credentials Binding (`withCredentials`):** Injects secrets from the Jenkins Credential Store (such as `github-ci-token`) into build steps at runtime while masking secret values (`****`) in console logs.

## Hands-On Commands & Verification
- Created `day-68/Jenkinsfile` with `Environment & Workspace Check`, `Credentials Binding Verification` (`github-ci-token`), and `Build & Artifact Simulation` stages.
- Created and ran Jenkins Pipeline job `day-68-declarative-pipeline` at `http://localhost:8080` and verified `Finished: SUCCESS` status in `Console Output`.

## LinkedIn Post Caption
🚀 **Day 68 of #150DaysOfDevOps: Jenkins Pipelines (`Jenkinsfile`), Declarative Syntax & Credentials Binding**

Today I moved from Jenkins setup to **Pipeline-as-Code** on Day 68:

🔹 **Declarative `Jenkinsfile` Structure:** Defined clear `agent`, `environment`, `stages`, `steps`, and `post` blocks so CI/CD logic lives in source control instead of manual UI clicks.
🔹 **Secure Credentials Binding:** Bound the `github-ci-token` credential via `withCredentials` inside a pipeline stage and verified that sensitive values remain masked (`****`) in build logs.
🔹 **Stage Execution & Artifacts:** Executed multi-stage pipeline steps (`Environment & Workspace Check`, `Credentials Binding Verification`, `Build & Artifact Simulation`) and verified a green `SUCCESS` build in Jenkins.

🔗 **GitHub Repository:** https://github.com/anugrahjastis-devops/devops-150-days

#DevOps #Jenkins #CICD #PipelineAsCode #Automation #150DaysOfDevOps #BuildInPublic

# Day 69: Pipeline Script from SCM (GitHub), Parameterized Builds & Poll SCM Triggers

## Concepts & Real-World Use-Case
- **Pipeline Script from SCM:** Connects Jenkins directly to a Git repository so `Jenkinsfile` is fetched from version control on every run, eliminating manual UI script edits.
- **Parameterized Pipelines (`parameters`):** Adds runtime inputs (`choice`, `string`, `booleanParam`) via `Build with Parameters`, allowing one pipeline to serve `dev`, `staging`, and `prod` workflows.
- **Conditional Stages (`when`) & Triggers (`pollSCM`):** Uses `when` blocks to conditionally run security/audit stages and `pollSCM` schedules to detect new Git commits automatically.

## Hands-On Commands & Verification
- Created `day-69/Jenkinsfile` with `DEPLOY_ENV` (`choice`), `APP_VERSION` (`string`), and `RUN_SECURITY_SCAN` (`booleanParam`) parameters plus `pollSCM('H/5 * * * *')`.
- Pushed `day-69/` to GitHub and configured Jenkins Pipeline job `day-69-scm-parameterized-pipeline` using **Pipeline script from SCM** (`Script Path: day-69/Jenkinsfile`).
- Executed `Build with Parameters` (`DEPLOY_ENV=staging`, `APP_VERSION=v1.2.0`) and verified `Finished: SUCCESS` in `Console Output`.

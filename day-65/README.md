# Day 65: GitHub Environments (Dev, Staging, Prod), Protection Rules, Manual Approvals & Concurrency

## Key Concepts Covered
- **GitHub Environments (`dev`, `staging`, `prod`):** Isolated deployment stages in GitHub Actions with environment-specific deployment history.
- **Protection Rules & Manual Approvals:** Configured `prod` environment protection rules requiring manual reviewer approval before production execution proceeds.
- **Concurrency Controls:** Used workflow-level and job-level `concurrency` groups with `cancel-in-progress: true` for `dev`/`staging` and `cancel-in-progress: false` for `prod` to protect pending production approvals.

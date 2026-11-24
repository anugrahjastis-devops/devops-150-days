# Day 66: Custom Composite Actions, Custom Actions & Workflow Permissions

## Concepts & Real-World Usage
- **Custom Composite Actions (`using: 'composite'`):** Bundled multi-step preflight and config validation logic into `.github/actions/service-preflight-audit/action.yml` with `inputs` and `outputs` so teams avoid duplicating YAML steps across repositories.
- **Custom Action Types:** Compared and documented the three GitHub Custom Action architectures: **Composite Actions** (`using: 'composite'`), **Docker Container Actions** (`using: 'docker'`), and **JavaScript/Node Actions** (`using: 'node20'`).
- **Workflow Permissions (Least Privilege):** Enforced `permissions: contents: read` at the workflow level and explicit minimal scopes (`contents: read`, `issues: read`, `pull-requests: read`) at the job level to protect `GITHUB_TOKEN` against supply-chain risks.

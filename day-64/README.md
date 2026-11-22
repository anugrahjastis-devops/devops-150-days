# Day 64: Reusable Workflows (`workflow_call`) & Modular Pipeline Design

## Key Concepts Covered
- **Reusable Workflows (`workflow_call`):** Built `day64-reusable-ci-template.yml` accepting typed `inputs` (`string`, `boolean`), `secrets`, and returning `outputs` via `$GITHUB_OUTPUT`.
- **Modular Pipeline Design (DRY):** Created `day64-caller-pipeline.yml` to invoke the same reusable template across `dev` and `prod` environments with `secrets: inherit`.
- **Cross-Workflow Outputs:** Consumed `needs.deploy-dev.outputs.artifact-tag` and `needs.deploy-prod.outputs.artifact-tag` in a downstream verification job.

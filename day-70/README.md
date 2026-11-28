# Day 70: Jenkins CI Pipeline — Build, Smoke Test & Push Docker Image to Docker Hub

## Objective
Automate container image delivery using a Jenkins Declarative Pipeline connected to GitHub SCM (day-70/Jenkinsfile) that builds a Python Flask microservice image (anugrahjastis/devops-150-days-api), runs an automated container health smoke test, and securely pushes versioned (v1.0.<BUILD_NUMBER>) and latest tags to Docker Hub.

## Architecture & Workflow
1. SCM Checkout: Jenkins pulls the latest commit from main branch (day-70/).
2. Docker Image Build: Builds python:3.11-slim container image tagged with dynamic ${BUILD_NUMBER} and latest.
3. Container Smoke Test: Spins up an ephemeral test container, validates the /health HTTP endpoint, and cleans up the container.
4. Secure Registry Push: Uses Jenkins withCredentials([usernamePassword(...)]) bound to dockerhub-creds (--password-stdin) to push images to Docker Hub without exposing secrets in console logs.

## Files Included
- app.py: Python Flask microservice exposing / and /health endpoints.
- requirements.txt: Python dependencies (flask==3.0.3).
- Dockerfile: Multi-layer container definition based on python:3.11-slim.
- Jenkinsfile: Declarative CI pipeline with Docker build, smoke test, and Docker Hub push stages.

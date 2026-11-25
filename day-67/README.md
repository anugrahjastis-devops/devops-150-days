# Day 67: Jenkins Setup (Dockerized Jenkins), Architecture, Plugins & Credentials

## Concepts & Real-World Usage
- **Jenkins Controller-Agent Architecture:** Separated orchestration responsibilities (Controller UI on port `8080`, inbound agent JNLP listener on port `50000`, scheduling, plugin & credential management) from isolated build execution on worker agents.
- **Dockerized Jenkins Setup:** Deployed `jenkins/jenkins:lts-jdk17` with persistent volume `jenkins_home`, Docker socket binding, and explicit DNS (`8.8.8.8`, `1.1.1.1`) for reliable Update Center connectivity.
- **Plugins Ecosystem:** Installed `Credentials` and core dependencies (`bouncycastle API`, `commons-text API`, `Ionicons API`) via Jenkins Plugin Manager.
- **Credentials Management:** Configured encrypted `Global credentials` (`github-ci-token`) inside Jenkins Credential Store so pipelines never hardcode sensitive secrets.

# 🩺 Day 32: Docker Healthchecks & Container Monitoring

## 📌 Overview
Today I explored **Docker Healthchecks** to automatically monitor container health and ensure application availability inside production environments.

---

## 🛠️ Why Use Healthchecks?
- **Proactive Monitoring:** Detects when an application inside a container hangs or becomes unresponsive, even if the container process itself is still running.
- **Auto-Healing & Orchestration:** Helps orchestrators like Kubernetes or Docker Swarm automatically restart or replace unhealthy containers.

---

## 💻 Implementation Details

### 1. Dockerfile with HEALTHCHECK
```dockerfile
FROM nginx:alpine

# Configure healthcheck parameters
HEALTHCHECK --interval=5s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost/ || exit 1

RUN echo "Hello from Healthy Nginx" > /usr/share/nginx/html/index.html
2. Execution & Inspection Commands
Bash
# Build custom image
docker build -t health-nginx:v1 .

# Run container in background
docker run -d --name my-healthy-web -p 8081:80 health-nginx:v1

# Inspect Container Health Status
docker inspect --format='{{json .State.Health.Status}}' my-healthy-web
Result: Status returned "healthy"!



# 🔄 Day 48: Docker Restart Policies & Container Resilience

## 📌 Overview
Today I learned how to configure Docker restart policies (`always`, `on-failure`, `unless-stopped`) to achieve container resilience, high availability, and automated failure recovery in production environments.

## 💻 Implementation
1. Deployed an optimized container with the `always` restart policy: `docker run -d --restart always -p 8085:80 --name resilient-container optimized-web:v1`.
2. Verified that Docker engine automatically monitors and handles runtime crashes or host restarts to maintain service uptime.

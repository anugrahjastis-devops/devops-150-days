# Day 55: Introduction to Docker Compose

## 📌 Overview
Practiced multi-container orchestration using Docker Compose to manage and scale applications efficiently without running individual `docker run` commands manually.

## 🛠️ What Was Done:
1. **Single-Container Compose Stack:** Created a `docker-compose.yml` file to run an Nginx web server container mapped to port `8080`.
2. **Multi-Container Stack:** Configured a multi-service setup involving:
   - `web` service (`nginx:alpine`)[cite: 5]
   - `db` service (`redis:alpine`)[cite: 5]
3. **Lifecycle Management:** 
   - Started the stack in detached mode using `docker compose up -d`[cite: 6].
   - Verified running containers and port bindings using `docker compose ps`[cite: 5].
   - Cleaned up resources cleanly using `docker compose down`[cite: 6].

## 💻 Commands Practiced:
```bash
docker compose up -d
docker compose ps
docker compose down

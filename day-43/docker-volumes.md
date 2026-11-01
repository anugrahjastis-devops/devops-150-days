# 💾 Day 43: Docker Volumes & Data Persistence

## 📌 Overview
Today I learned how to ensure data persistence for stateful applications (like databases) using Docker volumes, ensuring that data survives container deletion or restarts.

## 💻 Implementation
1. Configured a `docker-compose.yml` file running PostgreSQL (`postgres:alpine`).
2. Implemented named volumes (`pg_data`) mapped to `/var/lib/postgresql/data` inside the container.
3. Successfully initialized the persistent database stack using `docker compose up -d` and verified it via terminal.

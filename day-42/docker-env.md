# 🔐 Day 42: Docker Compose Environment Variables & .env Management

## 📌 Overview
Today I learned how to decouple configuration and sensitive variables from `docker-compose.yml` by using `.env` files and environment variable interpolation.

## 💻 Implementation
1. Created a `.env` file to securely store configuration variables like `PORT=8082` and `REDIS_VERSION=alpine`.
2. Configured `docker-compose.yml` to dynamically interpolate variables using `${PORT}` and `${REDIS_VERSION}`.
3. Successfully spun up the stack using `docker compose up -d` on port `8082`.

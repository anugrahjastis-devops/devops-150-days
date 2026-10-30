# 🐙 Day 41: Introduction to Docker Compose & YAML Syntax

## 📌 Overview
Today I learned how to manage multi-container applications using Docker Compose and YAML configuration files.

## 💻 Implementation
1. Created a `docker-compose.yml` file defining multiple services (`web-server` using Nginx and `redis-cache` using Redis).
2. Executed `docker compose up -d` to spin up the entire multi-container stack in detached mode.
3. Verified service deployment via browser at `http://localhost:8081`.

🐳 Day 35: Docker Compose Basics & Multi-Container Orchestration

## 📌 Overview
Today I explored **Docker Compose** to manage and orchestrate multi-container applications declaratively using a single YAML configuration file instead of running individual terminal commands.

---

## 🛠️ Key Concepts Learned
- **Infrastructure as Code (IaC):** Defined multi-service environments (Web Server + Database) in `docker-compose.yml`.
- **Single-Command Orchestration:** Spin up and tear down entire environments using `docker compose up` and `docker compose down`.
- **Automated Networking:** Services inside the same Compose file automatically share an isolated network and can communicate seamlessly.

---

## 💻 Implementation Details

### 1. `docker-compose.yml` Configuration File
```yaml
services:
  web-app:
    image: nginx:alpine
    container_name: compose-web
    ports:
      - "8080:80"
    networks:
      - app-net

  database:
    image: mysql:8.0
    container_name: compose-db
    environment:
      MYSQL_ROOT_PASSWORD: rootpassword123
      MYSQL_DATABASE: testdb
    networks:
      - app-net

networks:
  app-net:
    driver: bridge
2. Execution & Lifecycle Management Commands
Bash
# Start all services in background
docker compose up -d

# Verify active services running under Compose
docker compose ps

# View unified application logs
docker compose logs

# Stop and remove all containers, networks, and resources
docker compose down
Result: Successfully orchestrated Nginx and MySQL containers using Docker Compose!

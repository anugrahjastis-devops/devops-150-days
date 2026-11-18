# 💾 Day 36: Docker Volumes & Persistent Data Storage

## 📌 Overview
Today I explored **Docker Volumes** to manage persistent data storage, ensuring that critical data (like database records) survives even if containers are deleted or restarted.

---

## 🛠️ Key Concepts Learned
- **Ephemeral Storage:** Data stored inside a container's writable layer is lost when the container is removed.
- **Docker Volumes:** Managed by Docker and stored on the host filesystem, entirely decoupled from the container's lifecycle.
- **Data Persistence:** Storing database files safely in dedicated volumes so that restarting or upgrading containers doesn't result in data loss.

---

## 💻 Implementation Details

### 1. `docker-compose.yml` With Volume Support
```yaml
services:
  database:
    image: mysql:8.0
    container_name: persistent-db
    environment:
      MYSQL_ROOT_PASSWORD: securepassword123
      MYSQL_DATABASE: enterprise_db
    volumes:
      - db_data:/var/lib/mysql
    networks:
      - app-net

volumes:
  db_data:

networks:
  app-net:
    driver: bridge
2. Execution & Volume Verification Commands
Bash
# Spin up stack with persistent volume
docker compose up -d

# List all active Docker volumes on the host system
docker volume ls
Result: Successfully created managed volumes and verified persistent storage for MySQL!

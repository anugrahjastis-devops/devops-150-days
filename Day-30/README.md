# 📦 Day 30: Docker Storage Deep Dive (Named Volumes & Bind Mounts)

## 📌 Overview
Today I explored Docker Storage concepts to handle persistent data and host-container file sharing using Named Volumes and Bind Mounts.

---

## 🛠️ Key Storage Types
1. **Named Volumes (Docker Managed):** Best for databases and persistent app data across container lifecycles.
2. **Bind Mounts (Host Managed):** Maps a local host directory directly into a container, ideal for local development and live reloads.

---

## 🚀 Practical Implementation & Commands

### 1. Named Volume Creation & Data Persistence
```bash
# Create volume
docker volume create my-app-data

# Run container with volume mount
docker run -d --name volume-test-1 -v my-app-data:/app/data ubuntu bash -c "echo 'Production Log Entry - Day 30' > /app/data/log.txt && sleep 3600"

# Remove container
docker stop volume-test-1 && docker rm volume-test-1

# Verify data persistence in a new container
docker run --rm -v my-app-data:/app/data ubuntu cat /app/data/log.txt
Result: Data remained intact even after container deletion!

2. Bind Mount Practical (Development Workflow)
Bash
# Create local folder and file
mkdir -p ~/day30-test && cd ~/day30-test
echo "Hello from Host Machine" > index.html

# Run NGINX container with Bind Mount
docker run -d --name web-server -p 8080:80 -v $(pwd):/usr/share/nginx/html nginx

# Test live connection
curl http://localhost:8080
Output: Hello from Host Machine (Local file rendered live inside the NGINX container!)

📌 Day 30: Docker Storage Deep Dive
1. docker volume create my-app-data - Create Docker managed volume for data persistence
2. docker run -v my-app-data:/app/data - Mount named volume to ensure data survives container deletion
3. docker run -v $(pwd):/usr/share/nginx/html - Use Bind Mount for real-time development file sharing



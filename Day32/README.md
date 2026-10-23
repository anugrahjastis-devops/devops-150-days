# 🌐 Day 34: Docker Networking & Multi-Container Communication

## 📌 Overview
Today I explored **Docker Networking** and set up isolated, secure communication between multi-container environments using a custom bridge network.

## 🛠️ Core Concepts
- **Default Bridge Network:** Basic networking provided by Docker, but lacks automatic DNS resolution by container names.
- **Custom Bridge Network:** User-defined network allowing containers to discover and communicate with each other using container names instead of IP addresses

## 💻 Implementation Details

### 1. Created Custom Bridge Network
```bash
docker network create my-custom-network
docker network ls
2. Deployed Database Container on Custom Network
Bash
docker run -d --name my-db-server --network my-custom-network -e MYSQL_ROOT_PASSWORD=secretpass mysql:8.0
3. Tested DNS Resolution & Container Inter-communication
Bash
docker run --rm --network my-custom-network alpine ping -c 4 my-db-server
Result: Successfully pinged my-db-server using its container name with 0% packet loss, verifying automatic DNS resolution!

# 🌐 Day 29: Master Docker Networking

## 📌 Overview
Today I learned about Docker Networking and how containers communicate with each other securely using Custom Bridge Networks instead of default networks.

---

## 🛠️ Docker Default Networks
Docker provides 3 default networks out of the box:
1. **Bridge (`bridge`):** The default network for isolated container communication.
2. **Host (`host`):** Removes network isolation between the container and the host machine.
3. **None (`none`):** Completely disables networking for the container.

---

## 🚀 Step-by-Step Implementation

### 1. Create a Custom Bridge Network
Production best practice is to always use custom bridge networks for DNS auto-resolution between containers.
```bash
docker network create --driver bridge my-custom-network
2. Run Containers inside Custom Network
Bash
# Run first container
docker run -d --name container1 --network my-custom-network alpine sleep 3600

# Run second container
docker run -d --name container2 --network my-custom-network alpine sleep 3600
3. Verify Inter-Container Communication (Ping Test)
Tested container communication using container names instead of IP addresses:

Bash
docker exec -it container1 ping -c 3 container2
Result: 3 packets transmitted, 3 packets received, 0% packet loss. Containers successfully communicated via auto-DNS resolution!

🔑 Key Takeaway
In a custom bridge network, containers can directly discover and talk to each other using their Container Names via Docker's embedded DNS server, eliminating the need to hardcode IP addresses.



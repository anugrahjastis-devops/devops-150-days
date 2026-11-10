# 🌐 Day 52: Docker Networking & Inter-Container Communication

## 📌 Overview
Today I explored Docker Networking concepts, learned how container communication works behind the scenes, and practiced creating custom bridge networks.

## 🚀 Key Learnings & Practical Implementation
1. **Inspected Networks:** Analyzed default and custom bridge networks using `docker network ls` and `docker network inspect`.
2. **Custom Bridge Network:** Created an isolated custom network (`my-custom-network`) to enable secure communication between microservices.
3. **Container-to-Network Attachment:** Successfully spun up an Nginx container (`test-nginx`) inside the custom bridge network and verified its dynamically assigned IP address (`172.18.0.2`).
4. **Resource Cleanup:** Cleaned up test environments safely using `docker rm -f` and `docker network rm`.

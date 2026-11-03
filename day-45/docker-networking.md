# 🌐 Day 45: Docker Networking & Custom Bridge Networks

## 📌 Overview
Today I explored Docker networking concepts, learning how custom bridge networks allow containers on the same host to communicate securely and resolve each other by name.

## 💻 Implementation
1. Created a custom bridge network: `docker network create --driver bridge my-custom-network`.
2. Launched a container inside the custom network: `docker run -d --net my-custom-network --name networked-web-container my-custom-nginx:v1`.
3. Inspected network configurations and validated IP address assignment (`172.18.0.2`) using `docker network inspect`.

# 💾 Day 53: Docker Volumes & Data Persistence

## 📌 Overview
Today I explored Docker Volumes and data persistence concepts, learning how to safely manage and persist data independently of container lifecycles.

## 🚀 Key Learnings & Practical Implementation
1. **Created Docker Volumes:** Set up persistent storage volumes using `docker volume create my-data-vol`.
2. **Inspected Volume Mountpoints:** Analyzed physical storage mount paths on the host system using `docker volume inspect`.
3. **Mounted Volumes to Containers:** Successfully attached volumes to Nginx containers (`vol-test-nginx`) using the `-v` flag to ensure data survival even if containers are deleted.
4. **Resource Lifecycle Management:** Performed proper verification using `docker inspect` and cleaned up test resources securely.

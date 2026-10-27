
# ☁️ Day 38: Pushing Custom Docker Images to Docker Hub

## 📌 Overview
Today I learned how to authenticate with Docker Hub using a **Personal Access Token (PAT)**, tag local custom images according to registry naming conventions, and push them to Docker Hub for remote sharing and deployment.

---

## 🛠️ Key Concepts Learned
- **Docker Hub Authentication:** Using `docker login` with a secure Personal Access Token (PAT) instead of plaintext passwords.
- **Image Tagging (`docker tag`):** Renaming local images to match the format `USERNAME/repository:tag` so Docker knows which cloud repository to target.
- **Image Pushing (`docker push`):** Uploading container layers to a centralized cloud registry.

---

## 💻 Implementation Details

### 1. Authenticate with Docker Hub
```bash
docker login -u anugrahjastis
# Entered Personal Access Token (PAT) as password for secure authentication
2. Tag the Custom Image
Bash
docker tag my-custom-web-app:v1 anugrahjastis/my-custom-web-app:v1
3. Push the Image to Docker Hub
Bash
docker push anugrahjastis/my-custom-web-app:v1
Result: Custom Docker image successfully uploaded and hosted on Docker Hub!

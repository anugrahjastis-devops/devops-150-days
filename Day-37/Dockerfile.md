# 📦 Day 37: Custom Docker Images & Dockerfile Creation

## 📌 Overview
Today I learned how to create **Custom Docker Images** using a `Dockerfile` instead of relying solely on pre-built public images. I built a custom Nginx web server serving a personalized HTML page.

---

## 🛠️ Key Concepts Learned
- **Dockerfile:** A text-based script containing sequential instructions to build a Docker image from scratch.
- **`FROM`, `COPY`, `EXPOSE` Instructions:** Using base images, copying local files into container layers, and documenting network ports.
- **Image Building & Execution:** Using `docker build -t` to package code and `docker run -d -p` to deploy containers.

---

## 💻 Implementation Details

### 1. Custom HTML File (`index.html`)
```html
<!DOCTYPE html>
<html>
<head>
    <title>Day 37 - DevOps Challenge</title>
</head>
<body style="background-color: #0f172a; color: #38bdf8; text-align: center; padding-top: 50px;">
    <h1>🚀 Hello from Custom Docker Image!</h1>
    <p>Successfully built and deployed on Day 37 of 150-Day DevOps Challenge.</p>
</body>
</html>
2. Dockerfile Configuration
Dockerfile
# Use lightweight Nginx alpine base image
FROM nginx:alpine

# Copy local index.html into container's web root directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for web traffic
EXPOSE 80
3. Build & Run Commands
Bash
# Build custom image tagged as v1
docker build -t my-custom-web-app:v1 .

# Run container mapping host port 9090 to container port 80
docker run -d -p 9090:80 --name my-custom-container my-custom-web-app:v1
Result: Successfully deployed a custom web application container!

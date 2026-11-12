# 🏗️ Day 54: Writing Custom Dockerfiles & Building Images

## 📌 Overview
Today I learned how to write custom Dockerfiles, bundle application code into images, and build production-ready container images from scratch.

## 🚀 Key Learnings & Practical Implementation
1. **Created Custom HTML Page:** Set up a custom `index.html` file to serve application content.
2. **Wrote a Dockerfile:** Configured instructions using `FROM nginx:alpine`, `COPY`, and `EXPOSE` to define the container environment.
3. **Built Custom Docker Image:** Executed `docker build -t my-custom-web:v1 .` to package the custom web application.
4. **Tested Container App:** Ran the custom image with port mapping (`-p 8080:80`) and verified the output via browser (`localhost:8080`).

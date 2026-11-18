# 📦 Day 44: Custom Dockerfiles & Building Docker Images

## 📌 Overview
Today I learned how to write a custom `Dockerfile` from scratch, package a custom HTML web page into an Nginx base image, build the image, and run it as a container.

## 💻 Implementation
1. Created an `index.html` file with custom content.
2. Wrote a `Dockerfile` using `FROM nginx:alpine` and the `COPY` instruction.
3. Built the custom image using `docker build -t my-custom-nginx:v1 .`.
4. Deployed the container using `docker run -d -p 8083:80 --name custom-web-container my-custom-nginx:v1`.

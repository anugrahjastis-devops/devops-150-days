# 📥 Day 39: Pulling Docker Images from Docker Hub & Running Them Anywhere

## 📌 Overview
Today I learned how to pull custom container images from Docker Hub to a local machine using `docker pull` and successfully run them in a decoupled environment.

## 💻 Commands Implemented
1. `docker rmi anugrahjastis/my-custom-web-app:v1` - Removed local image to test remote pulling.
2. `docker pull anugrahjastis/my-custom-web-app:v1` - Downloaded the custom image from Docker Hub[cite: 12].
3. `docker run -d -p 9090:80 --name pulled-web-container anugrahjastis/my-custom-web-app:v1` - Ran the pulled image as a live container on port 9090[cite: 12].

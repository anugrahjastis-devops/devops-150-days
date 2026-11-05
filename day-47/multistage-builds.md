# 📦 Day 47: Docker Multi-stage Builds & Image Optimization

## 📌 Overview
Today I learned how to write enterprise-grade multi-stage Dockerfiles to optimize production image sizes, separate build dependencies from runtime environments, and improve deployment security.

## 💻 Implementation
1. Configured Stage 1 (`FROM alpine AS builder`) to generate build artifacts.
2. Configured Stage 2 (`FROM nginx:alpine`) as the clean, lightweight production layer.
3. Used `COPY --from=builder` to pull only the compiled output, built the image via `docker build -t optimized-web:v1 .`, and deployed it successfully on port 8084.

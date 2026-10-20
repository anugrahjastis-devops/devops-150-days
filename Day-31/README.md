🚀 Day 31: Docker Multi-Stage Builds & Image Optimization

## 📌 Overview
Today I learned how to use **Docker Multi-Stage Builds** to dramatically reduce Docker image sizes for production environments by separating the build environment from the runtime environment.

---

## 🛠️ Why Multi-Stage Builds?
- **Reduced Image Size:** Strips away build tools, compilers, and source code, keeping only compiled binaries.
- **Improved Security:** Fewer packages mean a smaller attack surface in production.
- **Faster Deployments:** Lightweight images speed up registry push/pull times.

---

## 💻 Implementation Details

### 1. Project Setup & Go Code (`main.go`)
Created a lightweight Go application that prints a execution message.

### 2. Multi-Stage Dockerfile
```dockerfile
# STAGE 1: Build Stage (Heavy Compiler Image)
FROM golang:1.21-alpine AS builder
WORKDIR /app
COPY main.go .
RUN go build -o myapp main.go

# STAGE 2: Production Stage (Lightweight Runtime)
FROM alpine:latest
WORKDIR /app
COPY --from=builder /app/myapp .
CMD ["./myapp"]
3. Execution & Verification
Bash
# Build the multi-stage image
docker build -t optimized-go-app:v1 .

# Run the optimized container
docker run --rm optimized-go-app:v1

# Check Image Size
docker images | grep optimized-go-app
Result: Reduced the image size down to 15.9 MB!


 31 completely finish ho chuka hai!

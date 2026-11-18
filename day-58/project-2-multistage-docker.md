# Day 58: Production-Grade Multi-Stage Docker Build Optimization

## 📌 Project Overview
As part of my 150-day DevOps & Cloud Engineering journey, I implemented a multi-stage Docker build and context optimization project. This project demonstrates how to transition from a heavy, insecure single-stage build (containing compilers and heavy SDKs) to an ultra-lightweight, secure production runtime image, drastically cutting down image size and security attack surfaces.

---

## 🏗️ Architecture & Optimization Strategy
1. **The Problem (Single-Stage Bloat)**:
   - Traditional Docker builds include the entire programming language SDK, build tools, dependency caches, and source code in the final production image.
   - Result: Huge image sizes (**1.29 GB** for a simple Go application)[cite: 8], which increases vulnerability risks, slows down CI/CD pipelines, and wastes storage bandwidth.
2. **The Solution (Multi-Stage Build)**:
   - **Stage 1 (Builder)**: Uses `golang:1.21` to compile the Go source code into a static binary (`CGO_ENABLED=0 GOOS=linux go build -o main .`)[cite: 9].
   - **Stage 2 (Runtime)**: Uses a secure, minimalist `alpine:latest` image and copies *only* the compiled binary (`--from=builder /app/main`) from Stage 1[cite: 9]. The compiler and heavy SDKs are left behind.
3. **Build Context Optimization (`.dockerignore`)**:
   - Excluded heavy local files (like `*.log`, `.git`, temporary builds) from being sent to the Docker daemon during build context transfer[cite: 7].

---

## 📂 Source Code & Configuration Files (Terminal Creation Commands)

### 1. Application Logic (`main.go`)
```bash
cat << 'EOF' > main.go
package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "<h1>🚀 Day 58: Multi-Stage Docker Build Optimization!</h1><p>Running from a super-lightweight, secure Alpine container!</p>")
	})

	fmt.Println("✅ Server running on port 8080...")
	http.ListenAndServe(":8080", nil)
}
EOF
```

### 2. Module Definition (`go.mod`)
```bash
cat << 'EOF' > go.mod
module devops-multistage-app

go 1.21
EOF
```

### 3. Build Context Control (`.dockerignore`)
```bash
cat << 'EOF' > .dockerignore
*.log
.git
README.md
EOF
```

### 4. Baseline Single-Stage `Dockerfile` (Before Optimization)
```bash
cat << 'EOF' > Dockerfile.single
FROM golang:1.21
WORKDIR /app
COPY . .
RUN go build -o main .
EXPOSE 8080
CMD ["./main"]
EOF
```

### 5. Production Multi-Stage `Dockerfile` (After Optimization)
```bash
cat << 'EOF' > Dockerfile
# --- Stage 1: Build Stage ---
FROM golang:1.21 AS builder
WORKDIR /app
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -o main .

# --- Stage 2: Production Runtime Stage ---
FROM alpine:latest
WORKDIR /app
COPY --from=builder /app/main .

EXPOSE 8080
CMD ["./main"]
EOF
```

---

## 📊 Results & Size Comparison
By separating the build environment from the runtime environment, the image size dropped drastically:
- **Single-Stage Image (`go-app-heavy:latest`)**: **1.29 GB**[cite: 8]
- **Multi-Stage Optimized Image (`go-app-optimized:latest`)**: **23.6 MB**[cite: 9]
- *Reduction:* **~98% reduction in image size!**

---

## 🚀 Execution & Verification Steps

### 1. Build Baseline Single-Stage Image (Heavy)
```bash
docker build -t go-app-heavy -f Dockerfile.single .
```

### 2. Build Production Multi-Stage Image (Optimized)
```bash
docker build -t go-app-optimized .
```

### 3. Compare Image Sizes
```bash
docker images | grep go-app
# Output:
# go-app-heavy       latest   1.29GB
# go-app-optimized   latest   23.6MB
```

### 4. Run the Optimized Container
```bash
docker run -d -p 8080:8080 --name my-optimized-container go-app-optimized
```

### 5. Verify Endpoint Response
```bash
curl http://localhost:8080
# Output: <h1>🚀 Day 58: Multi-Stage Docker Build Optimization!</h1><p>Running from a super-lightweight, secure Alpine container!</p>
```

### 6. Cleanup Resources
```bash
docker stop my-optimized-container && docker rm my-optimized-container
```

---
🌐 **GitHub Repository:** https://github.com/anugrahjastis-dev/devops-150-days

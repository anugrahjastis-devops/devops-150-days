# Day 57: Production-Grade Multi-Container Project (Node.js + MongoDB with Healthchecks & Volumes)

## 📌 Project Overview
As part of my 150-day DevOps & Cloud Engineering journey, I built and deployed a production-grade multi-container web application. This project demonstrates how modern microservices interact securely on a custom bridge network, maintain persistent storage across container lifecycles using Docker volumes, and enforce strict startup health synchronizations.

---

## 🏗️ System Architecture & Workflow
1. **Web Tier (`node-web-app`)**:
   - Built using a custom optimized `Dockerfile` based on `node:18-alpine`.
   - Exposes port `3000` to the host machine.
   - Connects dynamically to the database tier via environment variables (`MONGO_URI=mongodb://mongo:27017/devopsdb`).
   - Configured with `depends_on` (`condition: service_healthy`) to prevent startup race conditions.
2. **Database Tier (`mongo-db`)**:
   - Powered by official `mongo:6.0` image.
   - Configured with a dedicated `healthcheck` using `mongosh` to verify database readiness before dependent services start.
3. **Networking & Persistent Storage**:
   - **Custom Bridge Network (`app-net`)**: Isolates container-to-container communication securely.
   - **Persistent Volume (`mongo-data`)**: Maps container storage (`/data/db`) to host-managed persistent storage, preventing data loss across container restarts and teardowns.

---

## 📂 Complete Source Code & Configuration Files

### 1. Application Dependencies (`package.json`)
```json
{
  "name": "devops-node-mongo-app",
  "version": "1.0.0",
  "description": "Production-grade Node.js + MongoDB Docker Compose App",
  "main": "server.js",
  "scripts": {
    "start": "node server.js"
  },
  "dependencies": {
    "express": "^4.18.2",
    "mongoose": "^7.5.0"
  }
}
```

### 2. Backend Application Logic (`server.js`)
```javascript
const express = require('express');
const mongoose = require('mongoose');

const app = express();
const PORT = process.env.PORT || 3000;
const MONGO_URI = process.env.MONGO_URI || 'mongodb://mongo:27017/devopsdb';

// Visit Schema
const visitSchema = new mongoose.Schema({
  timestamp: { type: Date, default: Date.now },
  message: String
});
const Visit = mongoose.model('Visit', visitSchema);

// Connect to MongoDB
mongoose.connect(MONGO_URI)
  .then(() => console.log('✅ Successfully connected to MongoDB!'))
  .catch(err => {
    console.error('❌ MongoDB connection error:', err);
    process.exit(1);
  });

app.get('/', async (req, res) => {
  try {
    await Visit.create({ message: 'Page visited' });
    const count = await Visit.countDocuments();
    res.send(`
      <h1>🚀 DevOps Project 1: Node.js + MongoDB</h1>
      <p><strong>Status:</strong> Connected to MongoDB successfully!</p>
      <p><strong>Total Persistent Visits:</strong> ${count}</p>
    `);
  } catch (err) {
    res.status(500).send('Database Error: ' + err.message);
  }
});

app.listen(PORT, () => {
  console.log(`🚀 Server running on port ${PORT}`);
});
```

### 3. Custom Container Image (`Dockerfile`)
```dockerfile
FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
```

### 4. Production Orchestration (`docker-compose.yml`)
```yaml
version: '3.8'

services:
  web:
    build: .
    container_name: node-web-app
    ports:
      - "3000:3000"
    environment:
      - PORT=3000
      - MONGO_URI=mongodb://mongo:27017/devopsdb
    depends_on:
      mongo:
        condition: service_healthy
    networks:
      - app-net

  mongo:
    image: mongo:6.0
    container_name: mongo-db
    ports:
      - "27017:27017"
    volumes:
      - mongo-data:/data/db
    healthcheck:
      test: echo 'db.runCommand("ping").ok' | mongosh localhost:27017/test --quiet
      interval: 10s
      timeout: 5s
      retries: 5
      start_period: 40s
    networks:
      - app-net

volumes:
  mongo-data:
    driver: local

networks:
  app-net:
    driver: bridge
```

---

## 🚀 Execution & Verification Steps

### 1. Build and Run the Stack
```bash
docker compose up --build -d
```

### 2. Verify Container Status & Healthcheck
```bash
docker compose ps
# Output confirms mongo-db status as (healthy) before node-web-app initializes
```

### 3. Check Application Logs
```bash
docker compose logs web
# Output: ✅ Successfully connected to MongoDB!
```

### 4. Test Endpoint & Data Persistence Across Restarts
```bash
# Hit the application endpoint
curl http://localhost:3000

# Tear down containers and network (volume data remains preserved)
docker compose down

# Restart stack and verify state retention
docker compose up -d
curl http://localhost:3000
# Verified: Total Persistent Visits increments seamlessly from previous state
```

---
🌐 **GitHub Repository:** [https://github.com/anugrahjastis-dev/devops-150-days](https://github.com/anugrahjastis-dev/devops-150-days)

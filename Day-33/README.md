# 🔐 Day 33: Docker Environment Variables & Secrets Management

## 📌 Overview
Today I explored **Environment Variables** and **.env file integration** in Docker to securely pass configuration parameters and secrets into containers without hardcoding sensitive data into Dockerfiles or source code.
## 🛠️ Why Use Environment Variables?
- **Security:** Keeps database passwords, API keys, and sensitive tokens out of version control systems (like GitHub).
- **Flexibility:** Allows the same container image to run across Development, Staging, and Production environments simply by passing different `.env` configurations.

## 💻 Implementation Details

### 1. External `.env` File Setup
Created a `.env` file containing configuration keys:
```env
DB_HOST=mysql-prod-db.internal
DB_USER=admin_user
DB_PASSWORD=SuperSecretPass123!
APP_ENV=production
2. Passing Environment Files to Containers
Bash
# Run container using external .env file
docker run --rm --env-file .env ubuntu bash -c "echo 'Database Host: \$DB_HOST' && echo 'Database User: \$DB_USER' && echo 'App Environment: \$APP_ENV'"
3. Production MySQL Deployment with -e Flags
Bash
# Run MySQL database with runtime environment variables
docker run -d --name my-secure-db -e MYSQL_ROOT_PASSWORD=MySecurePassword123 -e MYSQL_DATABASE=company_db mysql:8.0

# Verify injected variables inside running container
docker exec my-secure-db env | grep MYSQL
Result: Verified that all credentials were isolated and injected into container runtime successfully!

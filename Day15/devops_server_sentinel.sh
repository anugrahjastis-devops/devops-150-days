#!/bin/bash

# =========================================================
# Project: DevOps Server Sentinel (Capstone Script)
# Author: Anugrah
# Description: Automated Server Health Check & Monitoring Engine
# =========================================================

LOG_FILE="./sentinel_audit.log"

log_status() {
    local LEVEL=$1
    local MESSAGE=$2
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] [$LEVEL] - $MESSAGE" | tee -a "$LOG_FILE"
}

check_system_health() {
    log_status "INFO" "Starting System Health Inspection..."
    local DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')
    if [ "$DISK_USAGE" -gt 80 ]; then
        log_status "WARN" "Disk Usage High: ${DISK_USAGE}%"
    else
        log_status "INFO" "Disk Usage Normal: ${DISK_USAGE}%"
    fi
    log_status "INFO" "Checking Memory & Uptime status..."
    uptime -p
}

check_services() {
    local SERVICES=("bash" "sshd")
    log_status "INFO" "Verifying Active Critical Processes..."
    for SERVICE in "${SERVICES[@]}"; do
        if pgrep "$SERVICE" > /dev/null; then
            log_status "SUCCESS" "Process '$SERVICE' is actively running."
        else
            log_status "ERROR" "Process '$SERVICE' NOT FOUND!"
            return 1
        fi
    done
}

# --- Execution Main Engine ---
log_status "START" "=== DEV-OPS SENTINEL MONITORING STARTED ==="

check_system_health

check_services
if [ $? -ne 0 ]; then
    log_status "CRITICAL" "Server Health Check Failed! Aborting Task."
    exit 1
fi

log_status "SUCCESS" "=== ALL HEALTH CHECKS PASSED SUCCESSFULLY ==="
exit 0

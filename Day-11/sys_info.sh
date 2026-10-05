#!/bin/bash

# System Information Script
echo "=========================================="
echo "          SYSTEM HEALTH REPORT            "
echo "=========================================="
echo "Date & Time : $(date)"
echo "User        : $(whoami)"
echo "Uptime      : $(uptime -p)"
echo "Disk Usage  :"
df -h / | awk 'NR==2 {print "Free Space: " $4 " / Total: " $2}'
echo "=========================================="

🚀 Day 10: Linux System Services, systemd & Service Management

1. systemctl status <service> - Inspects the active/inactive state, PID, memory usage, and recent logs of a system daemon.
2. sudo systemctl start <service> - Manually starts an inactive or stopped service.
3. sudo systemctl stop <service> - Safely terminates a running service without data corruption.
4. sudo systemctl restart <service> - Completely stops and immediately restarts a service to apply configuration changes.
5. sudo systemctl reload <service> - Refreshes service configuration files without interrupting active client connections (Zero-Downtime Reload).
6. sudo systemctl enable <service> - Links a service to system boot so it automatically starts on server reboot.
7. sudo systemctl disable <service> - Removes auto-boot symlinks to prevent unused services from starting automatically.

🛠️ Hands-On Execution Commands (SSH Service):
- systemctl status ssh
- sudo systemctl restart ssh
- sudo systemctl enable ssh

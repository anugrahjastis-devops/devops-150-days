#!/bin/bash

# Service & Network Loop Monitor
echo "--- Starting Log Archive Simulation (for loop) ---"
for item in App_Logs Database_Logs System_Logs; do
    echo "Processing and archiving: $item"
    sleep 1
done

echo ""
echo "--- Starting Active Ping Monitor (while loop) ---"
COUNT=1
while [ $COUNT -le 3 ]; do
    echo "Check $COUNT: System status active at $(date +%H:%M:%S)"
    sleep 2
    ((COUNT++))
done
echo "Monitoring completed successfully!"

#!/bin/bash

# Services to monitor
SERVICES=("apache2" "mysql")
LOG_FILE="/var/log/service_monitor.log"
DATE=$(date +"%Y-%m-%d %H:%M:%S")

for SERVICE in "${SERVICES[@]}"; do
    if systemctl is-active --quiet $SERVICE; then
        echo "$DATE - $SERVICE is running." >> "$LOG_FILE"
    else
        echo "$DATE - $SERVICE is not running. Restarting $SERVICE..." >> "$LOG_FILE"
        systemctl restart $SERVICE
        
        # Check if restart was successful
        if systemctl is-active --quiet $SERVICE; then
            echo "$DATE - Successfully restarted $SERVICE." >> "$LOG_FILE"
        else
            echo "$DATE - Failed to restart $SERVICE!" >> "$LOG_FILE"
            # Optional: Send an email notification
            echo "$SERVICE could not be restarted on $(hostname)" | mail -s "$SERVICE Restart Failed" webifydev.team@gmail.com
        fi
    fi
done

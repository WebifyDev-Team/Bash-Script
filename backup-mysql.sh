#!/bin/bash

# Configuration
DB_NAME="WebifyDev"
DB_USER="root"
DB_PASS="WPpBGsxC4jSgEnc"
BACKUP_DIR="/var/www/html/Databases"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/WebifyDev-$DATE.sql"

# Step 1: Create a backup
mysqldump -u $DB_USER -p$DB_PASS $DB_NAME > "$BACKUP_FILE"

# Step 2: Remove old backups (optional: Keep backups for 7 days)
find "$BACKUP_DIR" -type f -mtime +7 -name "WebifyDev-*.sql" -exec rm {} \;
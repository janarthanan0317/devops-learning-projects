#!/bin/bash

echo "Backup started"

DATE=$(date +%Y-%m-%d-%H-%M)

BACKUP_DIR="/home/ubuntu/devops-learning/log-backup-project/backups"

LOG_DIR="/var/log/nginx"


tar -czf $BACKUP_DIR/nginx-logs-$DATE.tar.gz $LOG_DIR


echo "Backup completed"

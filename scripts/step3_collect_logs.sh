#!/bin/bash

echo "===== STEP 3: Collecting Logs ====="

LOG_FILE=automation.log

echo "Log collected at: $(date)" >> $LOG_FILE
echo "Running containers:" >> $LOG_FILE
docker ps >> $LOG_FILE 2>&1

echo "Logs saved to $LOG_FILE"

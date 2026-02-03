#!/bin/bash

LOG_FILE=automation.log

echo "===== STEP 3: Collecting Logs =====" | tee -a $LOG_FILE
echo "Log collected at: $(date)" | tee -a $LOG_FILE

echo "Running containers:" | tee -a $LOG_FILE
docker ps 2>&1 | tee -a $LOG_FILE

echo "Logs saved to $LOG_FILE" | tee -a $LOG_FILE

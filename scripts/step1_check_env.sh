#!/bin/bash

ENVIRONMENT=$1
LOG_FILE=automation.log

echo "===== STEP 1: Environment Check =====" | tee -a $LOG_FILE
echo "Environment: $ENVIRONMENT" | tee -a $LOG_FILE

echo "User: $(whoami)" | tee -a $LOG_FILE
echo "Hostname: $(hostname)" | tee -a $LOG_FILE
echo "Date: $(date)" | tee -a $LOG_FILE

echo "Docker version:" | tee -a $LOG_FILE
docker --version 2>&1 | tee -a $LOG_FILE || echo "Docker not installed" | tee -a $LOG_FILE

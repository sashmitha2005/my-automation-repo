#!/bin/bash

echo "===== STEP 1: Environment Check ====="
echo "User:"
whoami
echo "Hostname:"
hostname
echo "Date:"
date
echo "Docker version:"
docker --version || echo "Docker not installed"

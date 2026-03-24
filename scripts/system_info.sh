#!/bin/bash
echo "==system info"
echo "date: $(date)"
echo "hostname: $(hostname)"
echo "current user: $(whoami)"
echo "uptime: $(uptime -p)"
echo ""
echo "== memory usage=="
free -h
echo ""
echo "== last 5 logins=="
last -n 5

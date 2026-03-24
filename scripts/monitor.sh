#!/bin/bash

echo "=== TOP 5 PROCESSES BY CPU ==="
ps aux --sort=-%cpu | head -6

echo ""
echo "=== TOP 5 PROCESSES BY MEMORY ==="
ps aux --sort=-%mem | head -6

echo ""
echo "=== TOTAL PROCESSES ==="
ps aux | wc -l

echo ""
echo "=== ZOMBIE PROCESSES ==="
ps aux | awk '$8=="Z" {print}'

chmod +x ~/devops_practice/scripts/monitor.sh



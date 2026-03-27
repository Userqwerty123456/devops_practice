#!/bin/bash
while true; do
  /app/monitor.sh > /app/html/index.html
  sleep 60
done

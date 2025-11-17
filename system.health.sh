#!/bin/bash

echo "===== SYSTEM HEALTH REPORT ====="

echo "Date      : $(date)"
echo "Uptime    : $(uptime -p)"
echo "Users     : $(who | awk '{print $1}' | paste -sd "," -)"
echo "Memory    :"
free -h

echo "Disk Usage:"
df -h

echo "Top 5 CPU consuming processes:"
ps -eo pid,user,pcpu,comm --sort=-pcpu | head -6


#!/bin/bash
CPU=$(top -bn 1 | grep "%Cpu(s):" | awk '{print ($2 "%")}')

MEM=$(free | grep "Mem" | awk '{print ($3/$2 * 100"%")}')

Disk=$(df -h /| awk '{print $5}' | tail -1)

echo "CPU: $CPU 
Mem: $MEM 
Disk: $Disk"

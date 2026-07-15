#!/bin/bash

CPU=$(top -bn1 | grep "Cpu(s)" | awk -F '[, ]+' '{print 100-$8}')
MEM_USED=$(free -h | awk '/^Mem:/ {print $3}')
MEM_TOTAL=$(free -h | awk '/^Mem:/ {print $2}')
MEM=$(free -m | awk '/^Mem:/ {printf "%.2f", ($3/$2)*100}')
DISK=$(df -h | grep " /$" | awk '{print $5}')
UPTime=$(uptime -p)
host=$(hostname)

echo "HOSTNAME: $host"
echo "CPU Usage: ${CPU}%"
echo "Memory Usage: $MEM_USED / $MEM_TOTAL (${MEM}%)"
echo "Disk Usage: $DISK"
echo "UPTIME: $UPTime"

if ping -c 1 google.com > /dev/null 2>&1
then
    echo "INTERNET CONNECTION: CONNECTED"
else
    echo "INTERNET CONNECTION: NOT CONNECTED"
fi

check_service() {
    service=$1
    if systemctl is-active --quiet "$service"
    then
        echo "$service: Running"
    else
        echo "$service: Not Running"
    fi
}

services=("nginx" "docker" "ssh")

for i in "${services[@]}"
do
    check_service "$i"
done

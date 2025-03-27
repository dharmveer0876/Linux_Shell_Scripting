#!/bin/bash

# This script is written for getting the load average for 15 minutes
# We will print "Server is overloaded"if load averageis more than 4
# If its less than 4 then it will print "All Good"

loadaveragethreshold=4

# Get the CPU load average
load_avg_15min=$(uptime| awk -F 'load average: ' '{print $2}' | cut -d ',' -f3 | tr -d ' ')
if [ $load_avg_15min -gt $loadaveragethreshold ];then
echo "Server Overloaded"
else
echo "All Good"
fi 


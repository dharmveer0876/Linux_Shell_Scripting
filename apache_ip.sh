#!/bin/bash

#The Apache access logs are text files that include information about all the requests processed by the Apache server

# Printing top 10 IPs hits counts

echo "Printing top 10 IPs hits counts: "

cat apache_logs | awk '{ print $1 }' | sort | uniq -c | sort -r | head -10

#Printing status code for http requests

echo "Printing status code for http requests:"

grep -i "HTTP" apache_logs | awk '{ print $9 }' | sort | uniq -c | sort -r

#!/bin/bash

# Scanner le réseau pour détecter les machines actives
nmap -sn 172.16.0.0/24 | grep "Nmap scan report" | awk '{print $5}' > ips.txt

# Compter le nombre de ports TCP ouverts
for ip in $(cat ips.txt); do
    open_ports=$(nmap -p- $ip | grep "open" | wc -l)
    echo "$ip;$open_ports" >> scan-result_1.csv
done


#!/bin/bash

# Scanner les IP des machines actives sur le réseau
nmap -sn 172.16.0.0/24 | grep "Nmap scan report" | awk '{print $5}' > ips.txt

for ip in $(cat ips.txt); do
    open_tcp=$(nmap -p- --open $ip | grep "open" | wc -l)
    open_udp=$(nmap -sU -p- --open $ip | grep "open" | wc -l)
    echo "$ip;$open_tcp;$open_udp" >> scan-result_2.csv
done

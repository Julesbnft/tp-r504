#!/bin/bash

# Scanner les IP des machines actives sur le réseau
nmap -sn 172.16.0.0/24 | grep "Nmap scan report" | awk '{print $5}' > ips.txt

# Pour chaque IP, compter les ports TCP et UDP ouverts, et récupérer la version du noyau
for ip in $(cat ips.txt); do
    open_tcp=$(nmap -p- $ip | grep "open" | wc -l)
    open_udp=$(nmap -sU -p- $ip | grep "open" | wc -l)
    os_version=$(nmap -O $ip | grep "OS details" | cut -d: -f2)
    echo "$ip;$open_tcp;$open_udp;$os_version" >> scan-result_3.csv
done

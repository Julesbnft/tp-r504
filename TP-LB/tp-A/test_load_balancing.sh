#!/bin/bash

count_nginx1=0
count_nginx2=0

for i in {1..500}
do
    response=$(curl -s http://localhost:83)
    if [[ $response == *"Hello 1"* ]]; then
        count_nginx1=$((count_nginx1 + 1))
    elif [[ $response == *"Hello 2"* ]]; then
        count_nginx2=$((count_nginx2 + 1))
    fi
done

echo "Réponses de nginx1 : $count_nginx1"
echo "Réponses de nginx2 : $count_nginx2"


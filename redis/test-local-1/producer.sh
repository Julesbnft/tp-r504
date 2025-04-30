#!/bin/bash

while true; do
  for i in {1..1000}; do
    redis-cli LPUSH mafile $RANDOM > /dev/null
  done
  taille=$(redis-cli LLEN mafile)
  echo "[PRODUCER] $taille valeurs dans la file."
  sleep 3
done


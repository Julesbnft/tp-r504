#!/bin/bash

SEUIL=30000

while true; do
  nb=$(redis-cli LLEN mafile)

  if [ "$nb" -gt 0 ]; then
    valeur=$(redis-cli RPOP mafile)
    echo "[CONSUMER] valeur = $valeur"

    if [ "$valeur" -gt "$SEUIL" ]; then
      echo " ALARME ! valeur > $SEUIL"
      sleep 4
    fi
  else
    echo "[CONSUMER] File vide, attente..."
    sleep 2
  fi
done


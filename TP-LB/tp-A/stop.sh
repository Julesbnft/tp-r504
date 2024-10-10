#!/bin/bash

# Arrêter les conteneurs
docker stop nginx1 nginx2 nginx-lb

# Supprimer le réseau tplb
docker network rm tplb


#!/bin/bash

# (a) Créer un réseau interne nommé tplb
docker network create tplb

# (b) Construire l'image im-nginx-lb
docker build -t im-nginx-lb .

# (c) Créer deux sous-dossiers shared1 et shared2
mkdir -p shared1 shared2

# (d) Placer les fichiers index.html
echo "<h1>Hello 1</h1>" > shared1/index.html
echo "<h1>Hello 2</h1>" > shared2/index.html

# (e) Lancer deux conteneurs nginx1 et nginx2
docker run --rm -d --name nginx1 --network tplb -p 81:80 -v $(pwd)/shared1:/usr/share/nginx/html nginx
docker run --rm -d --name nginx2 --network tplb -p 82:80 -v $(pwd)/shared2:/usr/share/nginx/html nginx

# (f) Lancer le conteneur de load balancer basé sur im-nginx-lb
docker run --rm -d --name nginx-lb --network tplb -p 83:80 im-nginx-lb

#!/bin/bash
# Supprimer tous les conteneurs
docker rm -f $(docker ps -aq)

# Supprimer les réseaux inutilisés
docker network prune -f

# Supprimer les volumes inutilisés
docker volume prune -f

# Supprimer toutes les autres ressources inutilisées (images, caches)
docker system prune -af --volumes

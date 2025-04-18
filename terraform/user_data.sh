#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y docker.io
sudo systemctl start docker
sudo usermod -aG docker ubuntu

docker pull 1308harshit/strapi-app:${image_tag}
docker stop strapi || true
docker rm strapi || true
# docker run -d -p 80:1337 --name strapi 1308harshit/strapi-app:${image_tag}
docker run -d -p 80:1337 -p 1337:1337 --name strapi 1308harshit/strapi-app:${image_tag} npm run develop


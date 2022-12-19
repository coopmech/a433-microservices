#! /bin/bash
#Dani Prasetyo - Docker Compose
docker build -t item-app:v1 .
#membuat Docker image dari Dockerfile sebelumnya dengan nama image item-app, dan memiliki tag v1
docker images
#Melihat daftar image di lokal
docker tag item-app:v1 ghcr.io/coopmech/item-app:v1
#Mengubah nama image agar sesuai dengan format github package
#export PAT=token from github << untuk delegasi variabel password
echo $PAT | docker login ghcr.io --username phanatic --password-stdin
#login ke github package
docker push ghcr.io/coopmech/item-app:v1
#menggungah image ke github package
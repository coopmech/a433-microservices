#! /bin/bash
#Dani Prasetyo - Docker Compose
docker build -t ghcr.io/coopmech/karsajobs-ui:latest .
#membuat Docker image dari Dockerfile sebelumnya dengan nama image karsajobs, dan memiliki tag latest
#export PASSWORD_DOCKER_HUB=token from github << untuk delegasi variabel password
echo $PASSWORD_DOCKER_HUB | docker login ghcr.io --username coopmech --password-stdin
#login ke github package
docker push ghcr.io/coopmech/karsajobs-ui:latest
#menggungah image ke github package
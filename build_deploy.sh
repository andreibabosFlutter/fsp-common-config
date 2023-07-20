#!/bin/sh
echo module name $1
echo tag $2

docker build -t $1 ./$1/. --build-arg pull_from=eu-frankfurt-1.ocir.io/sisalspa/next-digital/docker.io --build-arg base_image=node:16.14.2-alpine
docker tag $1 eu-frankfurt-1.ocir.io/sisalspa/next-digital/next-digital-platform/$1:$2
docker push eu-frankfurt-1.ocir.io/sisalspa/next-digital/next-digital-platform/$1:$2

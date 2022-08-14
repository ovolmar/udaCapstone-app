#!/usr/bin/env bash
source ./shell-vars.conf # Variables File. 
docker login 
echo "Docker ID and Image: $dockerpath"
docker tag $IMAGE_NAME $dockerpath
docker push ${dockerpath}

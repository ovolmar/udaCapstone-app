#!/usr/bin/env bash

image_name=captone-light
dockerpath=ovolmar/${image_name}
docker login 
echo "Docker ID and Image: $dockerpath"
docker tag $image_name $dockerpath
docker push ${dockerpath}

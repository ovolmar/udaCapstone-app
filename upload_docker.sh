#!/usr/bin/env bash

image_name='capstone-weather'
dockerpath=ovolmar/${image_name}
docker login 
echo "Docker ID and Image: $dockerpath"
docker tag $image_name $dockerpath
docker push ${dockerpath}

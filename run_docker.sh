#!/usr/bin/env bash

IMAGE_NAME='capstone-weather'

docker build -t $IMAGE_NAME .
docker image ls 
docker run -p 8000:80 $IMAGE_NAME
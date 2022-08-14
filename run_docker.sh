#!/usr/bin/env bash


source ./shell-vars.conf
docker build -t $IMAGE_NAME .
docker image ls |grep $IMAGE_NAME
docker run -d -p $LOCAL_PORT:$CONTAINER_PORT $IMAGE_NAME
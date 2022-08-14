#!/usr/bin/env bash
source ./shell-vars 
docker login
echo "Let the bodies hit the ground"
kubectl create deployment $IMAGE_NAME --image=${dockerpath} --port=80 

kubectl set image $IMAGE_NAME 
kubectl get pods 

mypod=$(kubectl get pods  | grep $IMAGE_NAME  | awk '{print $1}')
kubectl port-forward $mypod  $LOCAL_PORT:$CONTAINER_PORT

#
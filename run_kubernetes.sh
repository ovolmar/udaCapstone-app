#!/usr/bin/env bash

image_name='capstone-weather'
dockerpath=ovolmar/${image_name}
docker login
echo "Let the bodies hit the ground"
kubectl create deployment $image_name --image=${dockerpath} --port=80 

kubectl set image $image_name 
kubectl get pods 

mypod=$(kubectl get pods  | grep $image_name  | awk '{print $1}')
kubectl port-forward $mypod  8000:80

#
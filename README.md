[![CircleCI](https://dl.circleci.com/status-badge/img/gh/ovolmar/udaCapstone-app/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/ovolmar/udaCapstone-app/tree/main)
## Project Capstone [Cloud DevOps Engineer] 

The purpose of this project is to showcase what was learned throughout the Udacity course Cloud DevOps Engineer. This project includes a CI/CD pipeline running on CircleCI that will deploy an EKS cluster and deploy a Flask Application.

To build this project locally follow the instructions below.
## Pre-requirements for local development
- [Install minikube](https://minikube.sigs.k8s.io/docs/start/)
- [Install Docker](https://docs.docker.com/engine/install/)
- [Intall eksctl](https://docs.aws.amazon.com/eks/latest/userguide/eksctl.html)
---
## Prepare to Build Locally
- Clone this project--> git clone https://github.com/ovolmar/udaCapstone-app.git
- cd udaCaptone-app
- source virtualenv.sh
- make install
- make lint
- spin off minikube ( minikube start )
---
Edit ***shell-vars.conf***
Change your docker path and image name.
Execute the following scripts in the folling order:
```
 ./run_docker.sh  
 ./upload_docker.sh
 ./run_kubernetes.sh
```
Now you can check your deployment:
```
kubectl get svc,deployment
```


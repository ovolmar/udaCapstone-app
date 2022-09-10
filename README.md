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
Execute the following scripts in the following order to build your container locally and deploy to minikube.
```
 ./run_docker.sh  
 ./upload_docker.sh
 ./run_kubernetes.sh
```
Now you can check your deployment:
```
kubectl get svc,deployment
```

To verify that the app is working, write your deployment's IP into your browser using port 80, like
`http://localhost:80` or `http://LOAD_BALANCER_IP:80` (according to your environment).

Alternatively, you can use `curl`: `curl localhost:80` or `curl LOAD_BALANCER_IP:80`

### CI/CD Tools and Cloud Services

* [Circle CI](https://www.circleci.com) - Cloud-based CI/CD service
* [Amazon AWS](https://aws.amazon.com/) - Cloud services
* [AWS EKS](https://aws.amazon.com/eks/) - Amazon Elastic Kubernetes Services
* [AWS eksctl](https://eksctl.io) - The official CLI for Amazon EKS
* [AWS CLI](https://aws.amazon.com/cli/) - Command-line tool for AWS
* [kubectl](https://kubernetes.io/docs/reference/kubectl/) - a command-line tool to control Kubernetes clusters
* [Docker Hub](https://hub.docker.com/repository/docker/ovolmar/flask-blue) - Container images repository service

#### CicleCI Variables
| VARIABLE | VALUE |
| ------ | ------ |
| AMI | _redacted_** |
| ARN | _redacted_** |
| AWS_ACCESS_KEY_ID | _redacted_** |
| AWS_DEFAULT_REGION | _redacted_** |
| AWS_SECRET_ACCESS_KEY | _redacted_** |
| DOCKER_LOGIN | _redacted_** |
| DOCKER_TOKEN| _redacted_** |
| IMAGE_NAME | Docker image name |
|REGISTRY_URL | Your docker registry |
| AWS_PEM_KEY | _redacted_** |
[![CircleCI](https://dl.circleci.com/status-badge/img/gh/ovolmar/udaCapstone-app/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/ovolmar/udaCapstone-app/tree/main)
## Project Capstone [Cloud DevOps Engineer] 

The purpose of this project is to showcase what was learned throughout the course. This project includes a CI/CD pipeline for a microservice simple hello in flask.
To build this project locally follow the instructions below.
### Setup
- source virtualenv.sh
- make install
- make lint

To update the container image modify the variables  on the shell-vars.conf file then execute the following scripts.

- ./run_docker.sh ; ./upload_docker.sh
- minikube start 
- ./run_kubernetes




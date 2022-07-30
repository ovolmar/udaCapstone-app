#!/usr/bin/env bash

docker build -t capstone-light .
docker image ls 
docker run -p 8000:80 capstone-light
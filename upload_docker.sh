#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=talkdeepak/udacity_microservice:v1

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

export DOCKER_ID_USER="talkdeepak"
docker login
docker tag udacity_microservice:v1 $DOCKER_ID_USER/udacity_microservice:v1

# Step 3:
# Push image to a docker repository
docker push $DOCKER_ID_USER/udacity_microservice:v1
# testcircleci

# How to pull docker
docker login
docker run -p 8080:8080 j3ffrw/places:latest

# visit
http://localhost:8080/insidious-api/api/application.wadl


# Setting up CircleCI w/ docker hub,s3 maven repo integration
# Workflow
## 1. pull built artifacts from an s3 maven repo
## 2. push built docker iamge to docker hub private repo

# Enter the ff keys as environment variable in circleci
https://circleci.com/gh/xslots/testcircleci/edit#env-vars

# for pushing image to docker
DOCKER_EMAIL
DOCKER_PASS
DOCKER_USER
# for pulling artifacts from s3
password
username

 

# travist_docker_micropython
Docker base image for Micropython

Ubuntu 20.04 based image with Python3 and build tools needed for Micropython v1.18 builds


# Steps

## Build and Tag
Build and
docker build -t travistconsulting/travist_docker_micropython:mp_v1.18 .

## Push
docker push travistconsulting/travist_docker_micropython:mp_v1.18
#!/bin/bash

docker-compose -f /home/indy/docker/docker-compose.yml pull
docker-compose -f /home/indy/docker/docker-compose.yml up -d --no-deps --quiet-pull

#remove all container images that have no tag anymore (tag becomes none after new image is pulled with tag latest?)
for image in $(docker images | grep '<none>.*' | tr -s [:blank:] | cut -d '>' -f 2 | cut -d ' ' -f 2); do docker image rm ${image}; done

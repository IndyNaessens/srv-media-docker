#!/bin/bash

/usr/local/bin/docker-compose -f /home/indy/docker/docker-compose.yml pull 	#pull latest images
/usr/local/bin/docker-compose -f /home/indy/docker/docker-compose.yml up -d	#stop, recreate and start container if necessary (new image or config)
/snap/bin/docker image prune -af						#remove images that have no container associated to them

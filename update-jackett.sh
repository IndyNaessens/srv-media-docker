#!/bin/bash

/usr/local/bin/docker-compose -f /home/indy/docker/compose/docker-compose.yml pull jackett	# pull latest image for jackett
/usr/local/bin/docker-compose -f /home/indy/docker/compose/docker-compose.yml up -d jackett	# stop, recreate and start container if necessary (new image or config)

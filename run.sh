#!/bin/bash

IMAGE='fferriere/mariadb-client'
if [ -n "$FFERRIERE_MARIADB_CLIENT_IMAGE" ]; then
    IMAGE="$FFERRIERE_MARIADB_CLIENT_IMAGE"
fi

DOCKER_ARGS='--rm -i';
if [ -t 0 ]; then
    DOCKER_ARGS="$DOCKER_ARGS -t"
fi

docker run $DOCKER_ARGS \
  $IMAGE $@

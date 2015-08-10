#!/bin/bash

IMAGE='fferriere/mariadb-client'
if [ -n "$FFERRIERE_MARIADB_CLIENT_IMAGE" ]; then
    IMAGE="$FFERRIERE_MARIADB_CLIENT_IMAGE"
fi

SERVER_NAME='fferriere-mariadb-server'
if [ -n "$FFERRIERE_MARIADB_SERVER_NAME" ]; then
    SERVER_NAME="$FFERRIERE_MARIADB_SERVER_NAME"
fi

DOCKER_ARGS='--rm -i';
if [ -t 0 ]; then
    DOCKER_ARGS="$DOCKER_ARGS -t"
fi

docker run $DOCKER_ARGS \
  --volumes-from $SERVER_NAME \
  $IMAGE $@

#!/bin/bash

THIS_PATH=$(dirname $(realpath $0))

NAME='fferriere/mariadb-client'
if [ -n "$FFERRIERE_MARIADB_CLIENT_IMAGE" ]; then
    NAME="$FFERRIERE_MARIADB_CLIENT_IMAGE"
fi

docker build -t $NAME $@ $THIS_PATH/.

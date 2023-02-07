#!/usr/bin/env bash

source ./VARS

docker exec \
    -it \
    $NAME \
    docker run \
    -it --rm \
    --network host \
    --volume /gerbera:/var/run/gerbera \
    --volume /content:/content \
    gerbera/gerbera:$TAG \
    gerbera --port=49494 --config /var/run/gerbera/config.xml --debug

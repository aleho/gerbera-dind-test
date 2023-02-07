#!/usr/bin/env bash

source ./VARS

docker build . --tag $NAME
docker stop $NAME 2>/dev/null
docker rm $NAME 2>/dev/null
docker wait $NAME 2>/dev/null

docker volume create $NAME

docker run \
    -d \
    --privileged \
    --network host \
    --volume $NAME:/var/lib/docker \
    --name $NAME \
    $NAME

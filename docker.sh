#!/usr/bin/env bash

IMAGE_NAME=mg-verilog
CONTAINER_NAME=mg-verilog

CONTAINER=$(docker container ls -a --filter name="^${CONTAINER_NAME}$" --format "{{.Names}}")
if [ "$CONTAINER" != "$CONTAINER_NAME" ]; then
    echo "Creating new container"
    docker create -it \
    -v $(pwd):/mg-verilog \
    -w /mg-verilog \
    --name ${CONTAINER_NAME} ${IMAGE_NAME}
    docker start -a ${CONTAINER_NAME}
fi

# if container isn't running, start it
STATUS=$(docker container ls --filter name=${CONTAINER_NAME} --format "{{.Names}}")
if [ "$STATUS" != "$CONTAINER_NAME" ]; then
    echo "Spinning up $CONTAINER_NAME"
    docker start -a ${CONTAINER_NAME}
else
    echo "Connecting to new terminal"
    docker exec -it ${CONTAINER_NAME} bash
fi
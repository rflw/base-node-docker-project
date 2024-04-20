#!/bin/bash

# Define commands
BUILD="build"
START="start"
STOP="stop"
ATTACH='attach'

# Check command
if [ "$1" == "$BUILD" ]; then
    docker-compose up -d --build
elif [ "$1" == "$STOP" ]; then
    docker-compose down
elif [ "$1" == "$START" ]; then
    docker-compose up -d
elif [ "$1" == "$ATTACH" ]; then
    docker container exec -it $2 /bin/bash
else
    echo "Invalid command. Use '$BUILD', '$STOP', '$START', or '$ATTACH'."
fi

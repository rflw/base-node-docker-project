#!/bin/bash

# Define commands
BUILD="build"
START="start"
STOP="stop"

# Check command
if [ "$1" == "$BUILD" ]; then
    docker-compose up -d --build
elif [ "$1" == "$STOP" ]; then
    docker-compose down
elif [ "$1" == "$START" ]; then
    docker-compose up -d
else
    echo "Invalid command. Use '$BUILD', '$STOP', or '$START'."
fi

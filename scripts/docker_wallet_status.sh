#!/bin/bash

if [ ! -f ./env.sh ]; then
    echo "env.sh not found!"
    exit 1
fi

. ./env.sh

export ADDR=$(cat validator.hexaddr) && docker exec -it $DOCKER_NAME bash -c "wallet_status.sh $ADDR"


#!/bin/bash

docker build -t ansibletemplate .

if [ "$ret" == "0" ]
then
    echo "Build succeded..."
    docker-compose up --no-start
    docker-compose start
fi

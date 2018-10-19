#!/bin/bash

docker build -t testcentos .

ret=$?

echo $ret

if [ "$ret" == "0" ]
then
    echo "Build succeded..."
    docker-compose up
fi

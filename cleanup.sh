#!/bin/bash

docker rm -f $(docker ps -a -f status=exited -q)
docker rmi -f $(docker images udp -a -q)

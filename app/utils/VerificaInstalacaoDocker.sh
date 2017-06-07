#!/bin/bash

docker=$(which docker)
dockerCompose=$(which docker-compose)

if [[ -n "$docker" && -n "$dockerCompose" ]]; then
	echo true
else
	echo false
fi
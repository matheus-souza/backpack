#!/bin/bash

if [[ ! -d "/home/$usuario/docker/docker-compose.yml" ]]; then
	mkdir /home/$usuario/docker/

	wget https://www.dropbox.com/s/ztbzmovqn45ii3a/portainer_composer.yml?dl=0 -O /home/$usuario/docker/docker-compose.yml
fi

cd /home/$usuario/docker/

sudo docker-compose up -d

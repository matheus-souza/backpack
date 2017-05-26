#!/bin/bash

usuario=$(cat \./\.tmp/\.usuario)

if [[ ! -d "/home/$usuario/docker/docker-compose.yml" ]]; then
	mkdir /home/$usuario/docker

	wget https://www.dropbox.com/s/ztbzmovqn45ii3a/portainer_composer.yml?dl=0 -O /home/$usuario/docker/docker-compose.yml
fi

InstalacaoTrusty() {
	sudo apt-get install python-pip -y
	sudo pip install -U docker-compose
	sudo chmod +x /usr/local/bin/docker-compose
}

InstalacaoXenial() {
	sudo apt-get install docker-compose
}

case $(lsb_release -cs) in
	"trusty") InstalacaoTrusty ;;
	"xenial") InstalacaoXenial ;;
esac

chmod 777 /home/$usuario/docker -R

cd /home/$usuario/docker/

sudo docker-compose up -d

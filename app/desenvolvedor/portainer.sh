#!/bin/bash

usuario=$(cat /\tmp/\authentication/\.usuario)

if [[ ! -d "/home/$usuario/docker/docker-compose.yml" ]]; then
	mkdir /home/$usuario/docker

	wget https://gist.githubusercontent.com/matheus-souza/a888eea8902159f690b53aae2005343b/raw/346ac1bff8e9559c4b84abbaaef4378e2c2a4484/docker-compose.yml -O /home/$usuario/docker/docker-compose.yml
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

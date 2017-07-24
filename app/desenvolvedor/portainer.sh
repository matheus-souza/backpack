#!/bin/bash

usuario=$(./app/utils/UsuarioLogado.sh)
Portainer() {
	if [[ ! -d "/home/$usuario/portainer/docker-compose.yml" ]]; then
		mkdir /home/$usuario/docker

		wget https://gist.githubusercontent.com/matheus-souza/a888eea8902159f690b53aae2005343b/raw/346ac1bff8e9559c4b84abbaaef4378e2c2a4484/docker-compose.yml -O /home/$usuario/docker/docker-compose.yml
	fi

	chmod 777 /home/$usuario/docker -R

	cd /home/$usuario/docker/

	sudo docker-compose up -d	
}

Docker() {
	sudo ./app/desenvolvedor/docker-ce.sh
}

docker=$(./app/utils/VerificaInstalacaoDocker.sh)

if [[ $docker != "true" ]]; then
	Docker
	Portainer
else
	Portainer
fi
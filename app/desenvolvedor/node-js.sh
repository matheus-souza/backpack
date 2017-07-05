#!/bin/bash

NodeJs() {
	curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
	
	sudo apt-get install nodejs -y

	sudo apt-get install build-essential -y
}

Curl() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/curl.sh
}

curl=$(./app/utils/VerificaInstalacaoCurl.sh)

if [[ $curl != "true" ]]; then
	Curl
	NodeJs
else
	NodeJs
fi

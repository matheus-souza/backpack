#!/bin/bash

NodeJs() {
	curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
	sudo apt-get install -y nodejs

	sudo apt-get install -y build-essential

	sudo apt-get install npm -y

	sudo apt-get install nodejs-legacy -y
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

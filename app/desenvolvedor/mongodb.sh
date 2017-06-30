#!/bin/bash

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6

InstalacaoTrusty() {
	echo "deb [ arch=amd64 ] http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
}

InstalacaoXenial() {
	echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
}

versaoUbuntu=$(./app/utils/VerificaVersaoUbuntu.sh -c)

case $versaoUbuntu in
	"trusty") InstalacaoTrusty ;;
	"xenial") InstalacaoXenial ;;
esac

sudo apt-get update 

sudo apt-get install -y mongodb-org

sudo mkdir /data/db
sudo mkdir /data
sudo mkdir /data/db
sudo chmod 777 /data/db -R

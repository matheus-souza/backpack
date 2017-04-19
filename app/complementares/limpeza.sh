#!/bin/bash

usuario=0

usuario=$(cat \./\.tmp/\.usuario)

MenuConcluidoPrincipal() {
	./app/menus/concluidos/ConcluidoPrincipal.sh
}

sudo rm -rf /home/$usuario/.local/share/Trash/files/*

sudo rm -rf /var/tmp/*

sudo apt-get clean -y

sudo apt-get autoremove -y

sudo apt-get autoclean -y

sudo dpkg --configure -a

MenuConcluidoPrincipal
#!/bin/bash

usuario=$(cat /\tmp/\authentication/\.usuario)

Principal() {
	./app/menus/Principal.sh
}

Concluido() {
	./app/menus/complementares/Concluido.sh
}

sudo rm -rf /home/$usuario/.local/share/Trash/files/*

sudo rm -rf /var/tmp/*

sudo apt-get clean -y

sudo apt-get autoremove -y

sudo apt-get autoclean -y

sudo dpkg --configure -a

Concluido
Principal
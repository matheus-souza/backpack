#!/bin/bash

usuario=$(cat \./\.tmp/\.usuario)

MenuConcluidoPrincipal() {
	./app/menus/complementares/Concluido.sh
}

sudo rm -rf /home/$usuario/.local/share/Trash/files/*

sudo rm -rf /var/tmp/*

sudo apt clean -y

sudo apt autoremove -y

sudo apt autoclean -y

sudo dpkg --configure -a

MenuConcluidoPrincipal

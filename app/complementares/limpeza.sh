#!/bin/bash

usuario=0

usuario=$(cat \./\.tmp/\.usuario)

MenuConcluido() {
	./app/menus/complementares/Concluido.sh
}

sudo rm -rf /home/$usuario/.local/share/Trash/files/*

sudo rm -rf /var/tmp/*

sudo apt-get clean -y

sudo apt-get autoremove -y

sudo apt-get autoclean -y

sudo dpkg --configure -a

MenuConcluido
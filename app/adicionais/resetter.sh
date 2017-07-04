#!/bin/bash

usuario=$(./app/utils/UsuarioLogado.sh)

wget https://github.com/gaining/Resetter/releases/download/v1.0.0-stable/resetter_1.0.0-stable_all.deb -O /home/$usuario/Downloads/resetter.deb

sudo dpkg -i /home/$usuario/Downloads/resetter.deb

sudo apt-get -f install -y

sudo rm /home/$usuario/Downloads/resetter.deb
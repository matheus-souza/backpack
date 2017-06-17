#!/bin/bash

usuario=$(./app/utils/UsuarioLogado.sh)

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /home/$usuario/Downloads/google-chrome-stable_current_amd64.deb

sudo dpkg -i /home/$usuario/Downloads/google-chrome-stable_current_amd64.deb

sudo apt-get -f install -y

sudo rm /home/$usuario/Downloads/google-chrome-stable_current_amd64.deb

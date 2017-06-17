#!/bin/bash

usuario=$(./app/utils/UsuarioLogado.sh)

wget https://linux.dropbox.com/packages/ubuntu/dropbox_2015.10.28_amd64.deb -O /home/$usuario/Downloads/dropbox_amd64.deb

sudo dpkg -i /home/$usuario/Downloads/dropbox_amd64.deb

sudo apt-get -f install

sudo rm /home/$usuario/Downloads/dropbox_amd64.deb
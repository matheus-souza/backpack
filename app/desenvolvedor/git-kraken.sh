#!/bin/bash

#CHAMAR GIT INSTALL

usuario=$(cat /\tmp/\authentication/\.usuario)

wget https://release.gitkraken.com/linux/gitkraken-amd64.deb -O /home/$usuario/Downloads/gitkraken-amd64.deb

sudo dpkg -i /home/$usuario/Downloads/gitkraken-amd64.deb

sudo apt-get -f install -y

sudo rm /home/$usuario/Downloads/gitkraken-amd64.deb

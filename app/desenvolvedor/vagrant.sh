#!/bin/bash

usuario=$(./app/utils/UsuarioLogado.sh)

wget https://releases.hashicorp.com/vagrant/1.9.7/vagrant_1.9.7_x86_64.deb -O /home/$usuario/Downloads/vagrant_x86_64.deb

sudo dpkg -i /home/$usuario/Downloads/vagrant_x86_64.deb

sudo apt-get -f install -y

sudo rm /home/$usuario/Downloads/vagrant_x86_64.deb
#!/bin/bash

usuario=$(cat /\tmp/\authentication/\.usuario)

wget https://releases.hashicorp.com/vagrant/1.9.5/vagrant_1.9.5_x86_64.deb -O /home/$usuario/Downloads/vagrant_1.9.5_x86_64.deb

sudo dpkg -i /home/$usuario/Downloads/vagrant_1.9.5_x86_64.deb

sudo apt-get -f install -y

sudo rm /home/$usuario/Downloads/vagrant_1.9.5_x86_64.deb
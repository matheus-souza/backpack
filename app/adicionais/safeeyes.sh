#!/bin/bash

usuario=$(cat /\tmp/\authentication/\.usuario)

wget http://ppa.launchpad.net/slgobinath/safeeyes/ubuntu/pool/main/s/safeeyes/safeeyes_1.2.1-1_all.deb -O /home/$usuario/Downloads/safeeyes.deb

sudo dpkg -i /home/$usuario/Downloads/safeeyes.deb

sudo apt-get -f install -y

sudo rm /home/$usuario/Downloads/safeeyes.deb


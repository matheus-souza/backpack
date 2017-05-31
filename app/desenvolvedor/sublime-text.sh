#!/bin/bash

usuario=$(cat \./\.tmp/\.usuario)

wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb -O /home/$usuario/Downloads/sublime-text_build-3126_amd64.deb

sudo dpkg -i /home/$usuario/Downloads/sublime-text_build-3126_amd64.deb

sudo apt-get -f install -y

sudo rm /home/$usuario/Downloads/sublime-text_build-3126_amd64.deb

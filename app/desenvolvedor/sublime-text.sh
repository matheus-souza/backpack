#!/bin/bash

wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb -O /home/matheush/Downloads/sublime-text_build-3126_amd64.deb

sudo dpkg -i /home/matheush/Downloads/sublime-text_build-3126_amd64.deb

sudo apt-get -f install -y

sudo rm /home/matheush/Downloads/sublime-text_build-3126_amd64.deb
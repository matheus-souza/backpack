#!/bin/bash

wget https://release.gitkraken.com/linux/gitkraken-amd64.deb -O /home/matheush/Downloads/gitkraken-amd64.deb

sudo dpkg -i /home/matheush/Downloads/gitkraken-amd64.deb

sudo apt-get -f install -y

sudo rm /home/matheush/Downloads/gitkraken-amd64.deb
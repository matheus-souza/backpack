#!/bin/bash

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /home/matheush/Downloads/google-chrome-stable_current_amd64.deb

sudo dpkg -i /home/matheush/Downloads/google-chrome-stable_current_amd64.deb

sudo apt-get -f install -y

sudo rm /home/matheush/Downloads/google-chrome-stable_current_amd64.deb
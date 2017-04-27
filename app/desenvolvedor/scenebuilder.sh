#!/bin/bash

usuario=$(cat \./\.tmp/\.usuario)

wget http://download.gluonhq.com/scenebuilder/8.3.0/install/linux/scenebuilder-8.3.0.deb -O /home/$usuario/Downloads/scenebuilder-8.3.0.deb

sudo dpkg -i /home/$usuario/Downloads/scenebuilder-8.3.0.deb

sudo apt -f install -y

sudo rm /home/matheush/Downloads/scenebuilder-8.3.0.deb

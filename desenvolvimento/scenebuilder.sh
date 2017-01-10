#!/bin/bash

wget http://download.gluonhq.com/scenebuilder/8.3.0/install/linux/scenebuilder-8.3.0.deb -O /home/matheush/Downloads/scenebuilder-8.3.0.deb

sudo dpkg -i /home/matheush/Downloads/scenebuilder-8.3.0.deb

sudo apt-get -f install -y

sudo rm /home/matheush/Downloads/scenebuilder-8.3.0.deb
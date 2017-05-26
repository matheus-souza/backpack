#!/bin/bash

usuario=$(cat \./\.tmp/\.usuario)

wget https://download-cf.jetbrains.com/python/pycharm-professional-2017.1.2.tar.gz -O /home/$usuario/Downloads/pycharm-professional-2017.1.2.tar.gz

sudo tar xf /home/$usuario/Downloads/pycharm-professional-2017.1.2.tar.gz -C /opt/

sudo rm /home/$usuario/Downloads/pycharm-professional-2017.1.2.tar.gz

cd /opt/pycharm-2017.1.2/bin/

sudo chmod +x ./pycharm.sh

sudo chmod 777 /opt/pycharm-2017.1.2 -R

sudo -H -u $usuario bash -c "./pycharm.sh"
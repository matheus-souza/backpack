#!/bin/bash

usuario=$(cat \./\.tmp/\.usuario)

wget https://download-cf.jetbrains.com/webstorm/WebStorm-2017.1.1.tar.gz -O /home/$usuario/Downloads/WebStorm-2017.1.1.tar.gz

sudo tar xf /home/$usuario/Downloads/WebStorm-2017.1.1.tar.gz -C /opt/

sudo rm /home/$usuario/Downloads/WebStorm-2017.1.1.tar.gz

cd /opt/WebStorm-171.4073.40/bin/

sudo chmod +x ./webstorm.sh

sudo chmod 777 /opt/WebStorm-171.4073.40 -R

./webstorm.sh
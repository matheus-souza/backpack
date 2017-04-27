#!/bin/bash

usuario=$(cat \./\.tmp/\.usuario)

wget https://download-cf.jetbrains.com/webstorm/WebStorm-2017.1.1.tar.gz -O /home/$usuario/Downloads/WebStorm-2017.1.1.tar.gz

sudo tar xf /home/$usuario/Downloads/WebStorm-2017.1.1.tar.gz -C /opt/
cd /opt/WebStorm-171.4073.40/bin/
sudo chmod +x ./webstorm.sh 
sudo ./webstorm.sh 
sudo chmod 777 /opt/WebStorm-171.4073.40 -R

#!/bin/bash

usuario=$(cat \./\.tmp/\.usuario)

wget https://download-cf.jetbrains.com/webide/PhpStorm-2017.1.2.tar.gz -O /home/$usuario/Downloads/PhpStorm-2017.1.2.tar.gz

sudo tar xf /home/$usuario/Downloads/PhpStorm-2017.1.2.tar.gz -C /opt/

sudo rm /home/$usuario/Downloads/PhpStorm-2017.1.2.tar.gz

cd /opt/PhpStorm-171.4249.3/bin/

sudo chmod +x ./phpstorm.sh

sudo chmod 777 /opt/PhpStorm-171.4249.3 -R

./phpstorm.sh
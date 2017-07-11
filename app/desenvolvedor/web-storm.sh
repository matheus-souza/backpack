#!/bin/bash

usuario=$(./app/utils/UsuarioLogado.sh)

sudo rm /opt/WebStorm* -R

wget https://download-cf.jetbrains.com/webstorm/WebStorm-2017.1.4.tar.gz -O /home/$usuario/Downloads/WebStorm-2017.1.4.tar.gz

sudo tar xf /home/$usuario/Downloads/WebStorm-2017.1.4.tar.gz -C /opt/

sudo rm /home/$usuario/Downloads/WebStorm-2017.1.4.tar.gz

cd /opt/WebStorm-171.4694.29/bin/

sudo chmod +x ./webstorm.sh

sudo chmod 777 /opt/WebStorm-171.4694.29 -R

sudo -H -u $usuario bash -c "./webstorm.sh"
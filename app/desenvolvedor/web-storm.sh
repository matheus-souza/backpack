#!/bin/bash

usuario=$(./app/utils/UsuarioLogado.sh)

sudo rm /opt/WebStorm* -R

wget https://download-cf.jetbrains.com/webstorm/WebStorm-2017.3.tar.gz -O /home/$usuario/Downloads/WebStorm.tar.gz

sudo tar xf /home/$usuario/Downloads/WebStorm.tar.gz -C /opt/

sudo rm /home/$usuario/Downloads/WebStorm.tar.gz

cd /opt/WebStorm*/bin/

sudo chmod +x ./webstorm.sh

sudo chmod 777 /opt/WebStorm* -R

sudo -H -u $usuario bash -c "./webstorm.sh"

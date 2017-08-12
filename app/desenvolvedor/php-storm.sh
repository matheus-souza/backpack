#!/bin/bash

usuario=$(./app/utils/UsuarioLogado.sh)

sudo rm /opt/PhpStorm* -R

wget https://download-cf.jetbrains.com/webide/PhpStorm-2017.2.1.tar.gz -O /home/$usuario/Downloads/PhpStorm-2017.2.1.tar.gz

sudo tar xf /home/$usuario/Downloads/PhpStorm-2017.2.1.tar.gz -C /opt/

sudo rm /home/$usuario/Downloads/PhpStorm-2017.2.1.tar.gz

cd /opt/PhpStorm*/bin/		

sudo chmod +x ./phpstorm.sh

sudo chmod 777 /opt/PhpStorm* -R

sudo -H -u $usuario bash -c "./phpstorm.sh"
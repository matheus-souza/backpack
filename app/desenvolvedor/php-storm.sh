#!/bin/bash

usuario=$(./app/utils/UsuarioLogado.sh)

sudo rm /opt/PhpStorm-171.4249.3 -R

wget https://download-cf.jetbrains.com/webide/PhpStorm-2017.1.4.tar.gz -O /home/$usuario/Downloads/PhpStorm-2017.1.4.tar.gz

sudo tar xf /home/$usuario/Downloads/PhpStorm-2017.1.4.tar.gz -C /opt/

sudo rm /home/$usuario/Downloads/PhpStorm-2017.1.4.tar.gz

cd /opt/PhpStorm-171.4694.2/bin/	

sudo chmod +x ./phpstorm.sh

sudo chmod 777 /opt/PhpStorm-171.4694.2 -R

sudo -H -u $usuario bash -c "./phpstorm.sh"
#!/bin/bash

usuario=$(./app/utils/UsuarioLogado.sh)

wget https://download-cf.jetbrains.com/python/pycharm-professional-2017.3.tar.gz -O /home/$usuario/Downloads/pycharm-professional.tar.gz

sudo tar xf /home/$usuario/Downloads/pycharm-professional.tar.gz -C /opt/

sudo rm /home/$usuario/Downloads/pycharm-professional.tar.gz

cd /opt/pycharm/bin/

sudo chmod +x ./pycharm.sh

sudo chmod 777 /opt/pycharm* -R

sudo -H -u $usuario bash -c "./pycharm.sh"

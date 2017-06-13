#!/bin/bash

usuario=$(cat /\tmp/\authentication/\.usuario)

wget http://get.code-industry.net/public/master-pdf-editor-4.2.02_qt5.amd64.deb -O /home/$usuario/Downloads/master-pdf-editor.deb

sudo dpkg -i /home/$usuario/Downloads/master-pdf-editor.deb

sudo apt-get -f install

sudo rm /home/$usuario/Downloads/master-pdf-editor.deb
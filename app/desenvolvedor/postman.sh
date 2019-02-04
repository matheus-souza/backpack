#!/bin/bash

usuario=$(./app/utils/UsuarioLogado.sh)

wget https://dl.pstmn.io/download/latest/linux64 -O /home/$usuario/Downloads/Postman.tar.gz

cd /home/$usuario/Downloads

sudo tar xvzf ./Postman.tar.gz -C ./

sudo rm /opt/Postman* -R

sudo mv ./Postman /opt/

sudo touch /usr/share/applications/postman.desktop
 
sudo chmod 666 /usr/share/applications/postman.desktop
 
sudo echo "[Desktop Entry]" > /usr/share/applications/postman.desktop
sudo echo "Version=1.0" >> /usr/share/applications/postman.desktop
sudo echo "Type=Application" >> /usr/share/applications/postman.desktop
sudo echo "Terminal=false" >> /usr/share/applications/postman.desktop
sudo echo "Name=Postman" >> /usr/share/applications/postman.desktop
sudo echo "Exec=/opt/Postman/Postman" >> /usr/share/applications/postman.desktop
sudo echo "Icon=/opt/Postman/app/resources/app/assets/icon.png" >> /usr/share/applications/postman.desktop
sudo echo "Categories=Application;" >> /usr/share/applications/postman.desktop
 
sudo chmod 644 /usr/share/applications/postman.desktop

sudo rm /home/$usuario/Downloads/Postman.tar.gz

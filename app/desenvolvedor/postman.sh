#!/bin/bash

usuario=$(cat \./\.tmp/\.usuario)

wget https://dl.pstmn.io/download/latest/linux64 -O /home/$usuario/Downloads/Postman.tar.gz

cd /home/$usuario/Downloads

sudo tar xvzf ./Postman.tar.gz -C ./

sudo mv ./Postman /opt/

sudo touch /usr/share/applications/postman.desktop
 
sudo chmod 666 /usr/share/applications/postman.desktop
 
sudo echo "[Desktop Entry]" > /usr/share/applications/postman.desktop
sudo echo "Version=1.0" >> /usr/share/applications/postman.desktop
sudo echo "Type=Application" >> /usr/share/applications/postman.desktop
sudo echo "Terminal=false" >> /usr/share/applications/postman.desktop
sudo echo "Name=Postman" >> /usr/share/applications/postman.desktop
sudo echo "Exec=/opt/Postman/Postman" >> /usr/share/applications/postman.desktop
sudo echo "Icon=/opt/Postman/postman.png" >> /usr/share/applications/postman.desktop
sudo echo "Categories=Application;" >> /usr/share/applications/postman.desktop
 
sudo chmod 644 /usr/share/applications/postman.desktop
 
wget https://www.dropbox.com/s/q1aycrntwlmv4w8/postman.png?dl=0 -O ~/Downloads/postman.png
 
sudo mv /home/$usuario/Downloads/postman.png /opt/Postman/

sudo rm /home/$usuario/Downloads/Postman.tar.gz

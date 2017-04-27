#!/bin/bash

usuario=$(cat \./\.tmp/\.usuario)

wget https://github.com/meetfranz/franz-app/releases/download/4.0.4/Franz-linux-x64-4.0.4.tgz -O /home/$usuario/Downloads/Franz-linux-x64-4.0.4.tgz

cd /home/$usuario/Downloads

mkdir ./Franz

sudo tar xvzf ./Franz-linux-x64-4.0.4.tgz -C ./Franz/

sudo mv ./Franz /opt/

sudo touch /usr/share/applications/franz.desktop
 
sudo chmod 666 /usr/share/applications/franz.desktop
 
sudo echo "[Desktop Entry]" > /usr/share/applications/franz.desktop
sudo echo "Version=1.0" >> /usr/share/applications/franz.desktop
sudo echo "Type=Application" >> /usr/share/applications/franz.desktop
sudo echo "Terminal=false" >> /usr/share/applications/franz.desktop
sudo echo "Name=Franz" >> /usr/share/applications/franz.desktop
sudo echo "Exec=/opt/Franz/Franz" >> /usr/share/applications/franz.desktop
sudo echo "Icon=/opt/Franz/franz.png" >> /usr/share/applications/franz.desktop
sudo echo "Categories=Application;" >> /usr/share/applications/franz.desktop
 
sudo chmod 644 /usr/share/applications/franz.desktop
 
wget https://www.dropbox.com/s/bfc4a0x8ebvpiai/franz.png?dl=0 -O /home/$usuario/Downloads/franz.png
 
sudo mv /home/$usuario/Downloads/franz.png /opt/Franz/

#!/bin/bash

usuario=$(cat \./\.tmp/\.usuario)

wget https://downloadsapachefriends.global.ssl.fastly.net/xampp-files/7.1.1/xampp-linux-x64-7.1.1-0-installer.run?from_af=true -O /home/$usuario/Downloads/xampp-linux-x64-7.1.1-0-installer.run

cd /home/$usuario/Downloads/

sudo chmod +x xampp-linux-x64-7.1.1-0-installer.run

sudo ./xampp-linux-x64-7.1.1-0-installer.run

sudo usermod -g root $usuario

sudo chmod 775 /opt/lampp -R
sudo chmod 777 /opt/lampp/htdocs -R

wget https://www.dropbox.com/s/47j3sxtr42l3y5e/xampp.png?dl=0 -O /home/$usuario/Downloads/xampp.png

sudo mv xampp.png /opt/lampp/bin

sudo touch /usr/share/applications/xampp.desktop
 
sudo chmod 666 /usr/share/applications/xampp.desktop

sudo echo "[Desktop Entry]" > /usr/share/applications/xampp.desktop
sudo echo "Version=1.0" >> /usr/share/applications/xampp.desktop
sudo echo "Type=Application" >> /usr/share/applications/xampp.desktop
sudo echo "Terminal=false" >> /usr/share/applications/xampp.desktop
sudo echo "Name=Xampp" >> /usr/share/applications/xampp.desktop
sudo echo "Exec=gksudo /opt/lampp/manager-linux-x64.run" >> /usr/share/applications/xampp.desktop
sudo echo "Icon=/opt/lampp/bin/xampp.png" >> /usr/share/applications/xampp.desktop
sudo echo "Categories=Application;Development;Java;IDE" >> /usr/share/applications/xampp.desktop
 
sudo chmod 644 /usr/share/applications/xampp.desktop

sudo rm /home/$usuario/Downloads/xampp-linux-x64-7.1.1-0-installer.run

#!/bin/bash

#CHAMAR JAVA INSTALL

usuario=$(cat \./\.tmp/\.usuario)

wget http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/neon/2/eclipse-jee-neon-2-linux-gtk-x86_64.tar.gz -O /home/$usuario/Downloads/eclipse-jee-neon-2-linux-gtk-x86_64.tar.gz

cd /home/$usuario/Downloads

sudo tar xvzf ./eclipse-jee-neon-2-linux-gtk-x86_64.tar.gz -C ./

sudo mv ./eclipse /opt/

sudo touch /usr/share/applications/eclipse.desktop
 
sudo chmod 666 /usr/share/applications/eclipse.desktop
 
sudo echo "[Desktop Entry]" > /usr/share/applications/eclipse.desktop
sudo echo "Version=1.0" >> /usr/share/applications/eclipse.desktop
sudo echo "Type=Application" >> /usr/share/applications/eclipse.desktop
sudo echo "Terminal=false" >> /usr/share/applications/eclipse.desktop
sudo echo "Name=Eclipse" >> /usr/share/applications/eclipse.desktop
sudo echo "Exec=/opt/eclipse/eclipse" >> /usr/share/applications/eclipse.desktop
sudo echo "Icon=/opt/eclipse/icon.xpm" >> /usr/share/applications/eclipse.desktop
sudo echo "Categories=Application;Development;Java;IDE" >> /usr/share/applications/eclipse.desktop
 
sudo chmod 644 /usr/share/applications/eclipse.desktop

sudo rm /home/$usuario/Downloads/eclipse-jee-neon-2-linux-gtk-x86_64.tar.gz

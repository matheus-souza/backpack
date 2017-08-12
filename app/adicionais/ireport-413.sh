#!/bin/bash

usuario=$(./app/utils/UsuarioLogado.sh)

wget https://ufpr.dl.sourceforge.net/project/ireport/iReport/iReport-4.1.3/iReport-4.1.3.tar.gz -O /home/$usuario/Downloads/iReport-4.1.3.tar.gz

cd /home/$usuario/Downloads

sudo tar xvzf ./iReport-4.1.3.tar.gz

sudo echo "jdkhome=/usr/lib/jvm/java-1.7.0-openjdk-amd64" >> ./iReport-4.1.3/etc/ireport.conf

sudo mv ./iReport-4.1.3 /opt/

sudo chmod +x /opt/iReport-4.1.3/bin/ireport

sudo touch /usr/share/applications/ireport.desktop
 
sudo chmod 666 /usr/share/applications/ireport.desktop
 
sudo echo "[Desktop Entry]" > /usr/share/applications/ireport.desktop
sudo echo "Version=1.0" >> /usr/share/applications/ireport.desktop
sudo echo "Type=Application" >> /usr/share/applications/ireport.desktop
sudo echo "Terminal=false" >> /usr/share/applications/ireport.desktop
sudo echo "Name=iReport 4.1.3" >> /usr/share/applications/ireport.desktop
sudo echo "Exec=/opt/iReport-4.1.3/bin/ireport" >> /usr/share/applications/ireport.desktop
sudo echo "Icon=/opt/iReport-4.1.3/bin/document.ico" >> /usr/share/applications/ireport.desktop
sudo echo "Categories=Application;" >> /usr/share/applications/ireport.desktop

sudo chmod 644 /usr/share/applications/ireport.desktop
#!/bin/bash

wget http://download.netbeans.org/netbeans/8.2/final/bundles/netbeans-8.2-linux.sh -O /home/matheush/Downloads/netbeans-8.2-linux.sh

sudo mkdir /opt/NetBeans

sudo chmod 777 /opt/NetBeans* -R

cd /home/matheush/Downloads/

sudo chmod +x ./netbeans-8.2-linux.sh

sudo ./netbeans-8.2-linux.sh

sudo rm /opt/NetBeans/netbeans-8.2/nb/netbeans.png

wget https://www.dropbox.com/s/ue5wwe44jeigakl/netbeans.png?dl=0 -O ~/Downloads/netbeans.png

sudo mv netbeans.png /opt/NetBeans/netbeans-8.2/nb/

sudo rm /home/matheush/Downloads/netbeans-8.2-linux.sh
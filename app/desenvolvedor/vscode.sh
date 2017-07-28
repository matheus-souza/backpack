#!/bin/bash

pcarch=$(uname -m)
gpacman=$(sudo pacman -h)
user=$(./app/utils/UsuarioLogado.sh)

if [[ $gpacman ]]; then
    echo -e "Pacman!"

    if [ $pcarch == "x86_64" ]; then
        wget https://go.microsoft.com/fwlink/?LinkID=620884 -O /home/$user/Downloads/vscode-linux-$pcarch.tar.gz
    else
        wget https://go.microsoft.com/fwlink/?LinkID=620885 -O /home/$user/Downloads/vscode-linux-$pcarch.tar.gz
    fi

    tar -xvf /home/$user/Downloads/vscode-linux-$pcarch.tar.gz -C /home/$user/
    rm /home/$user/Downloads/vscode-linux-$pcarch.tar.gz
else
    echo -e "Apt-get!"

    if [ $pcarch == "x86_64" ]; then
        wget https://go.microsoft.com/fwlink/?LinkID=760868 -O /home/$user/Downloads/vscode-linux-$pcarch.deb
    else
        wget https://go.microsoft.com/fwlink/?LinkID=760680 -O /home/$user/Downloads/vscode-linux-$pcarch.deb
    fi

    sudo dpkg -i /home/$user/Downloads/vscode-linux-$pcarch.deb
    sudo apt-get update
    sudo apt-get -f install -y
    sudo rm /home/$user/Downloads/vscode-linux-$pcarch.deb
fi

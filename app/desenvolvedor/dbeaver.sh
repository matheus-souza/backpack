#!/bin/bash

usuario=$(./app/utils/UsuarioLogado.sh)

Dbeaver() {
    wget https://dbeaver.jkiss.org/files/4.3.5/dbeaver-ce_4.3.5_amd64.deb -O /home/$usuario/Downloads/dbeaver-ce.deb

    sudo dpkg -i /home/$usuario/Downloads/dbeaver-ce.deb

    sudo apt-get -f install -y

    sudo rm /home/$usuario/Downloads/dbeaver-ce.deb
}

JavaJdk() {
    sudo ./app/desenvolvedor/java-jdk.sh
}

jdk=$(./app/utils/VerificaInstalacaoJdk.sh)

if [[ $jdk != "true" ]]; then
    JavaJdk
    Dbeaver
else
    Dbeaver
fi
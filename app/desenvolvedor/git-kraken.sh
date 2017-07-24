#!/bin/bash

usuario=$(./app/utils/UsuarioLogado.sh)

GitKraken() {
	wget https://release.gitkraken.com/linux/gitkraken-amd64.deb -O /home/$usuario/Downloads/gitkraken-amd64.deb

	sudo dpkg -i /home/$usuario/Downloads/gitkraken-amd64.deb

	sudo apt-get -f install -y

	sudo rm /home/$usuario/Downloads/gitkraken-amd64.deb	
}

Git() {
	./app/desenvolvedor/git.sh
}

git=$(./app/utils/VerificaInstalacaoGit.sh)

if [[ $git != "true" ]]; then
	Git
	GitKraken
else
	GitKraken
fi


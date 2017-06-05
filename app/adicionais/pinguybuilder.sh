#!/bin/bash

usuario=$(cat /\tmp/\authentication/\.usuario)



InstalacaoTrusty() {
	wget http://liquidtelecom.dl.sourceforge.net/project/pinguy-os/ISO_Builder/pinguybuilder_3.3-7_all.deb -O /home/$usuario/Downloads/pinguybuilder.deb
}

InstalacaoXenial() {
	wget https://sourceforge.net/projects/pinguy-os/files/ISO_Builder/pinguybuilder_4.3-8_all-beta.deb/download -O /home/$usuario/Downloads/pinguybuilder.deb
}

case $(lsb_release -cs) in
	"trusty") InstalacaoTrusty ;;
	"xenial") InstalacaoXenial ;;
esac

sudo dpkg -i /home/$usuario/Downloads/pinguybuilder.deb

sudo apt-get install -f
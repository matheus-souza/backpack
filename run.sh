#!/bin/bash

senha=0
usuario=0

chmod +x ./ -R

usuario=$(whiptail --inputbox "Por favor digite seu usuário" 8 78 --title "scripts-ubuntu" 3>&1 1>&2 2>&3)

senha=$(whiptail --passwordbox "Por favor digite sua senha" 8 78 --title "scripts-ubuntu" 3>&1 1>&2 2>&3)

MenuPrincipal() {
	./app/menus/Principal.sh
}

if [[ ! -d "./.tmp" ]]; then
	mkdir ./.tmp

	touch ./.tmp/.senha
	touch ./.tmp/.usuario
fi

echo $senha > ./.tmp/.senha
echo $usuario > ./.tmp/.usuario

MenuPrincipal

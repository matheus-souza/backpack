#!/bin/bash

senha=0
usuario=0

usuario=$(whiptail --inputbox "Por favor digite seu usuário" 8 78 --title "Facius" 3>&1 1>&2 2>&3)

senha=$(whiptail --passwordbox "Por favor digite sua senha" 8 78 --title "Facius" 3>&1 1>&2 2>&3)

MenuPrincipal() {
	./app/menu/MenuPrincipal.sh
}

echo $senha > ./.tmp/.senha
echo $usuario > ./.tmp/.usuario

MenuPrincipal

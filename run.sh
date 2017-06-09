#!/bin/bash

chmod +x ./ -R

usuario=$(whiptail --title "Backpack" --inputbox "Por favor digite seu usuário" --nocancel 8 78 3>&1 1>&2 2>&3)

senha=$(whiptail --title "Backpack" --passwordbox "Por favor digite sua senha" --nocancel 8 78 3>&1 1>&2 2>&3)

#Verirfica se foi digitado usuario e senha
if [[ "$usuario" != "" && "$senha" != "" ]]; then
	MenuPrincipal
else
	whiptail --title "Erro!" --msgbox "Houve um problema ao autenticar o usuário" 8 60
	exit 0
fi


MenuPrincipal() {
	./app/menus/Principal.sh
}

if [[ ! -d "/tmp/authentication" ]]; then
	mkdir /tmp/authentication

	touch /tmp/authentication/.senha
	touch /tmp/authentication/.usuario
fi

echo $senha > /tmp/authentication/.senha
echo $usuario > /tmp/authentication/.usuario

MenuPrincipal

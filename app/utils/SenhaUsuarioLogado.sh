#!/bin/bash

if [[ ! -d "/tmp/authentication" ]]; then
	whiptail --title "Erro!" --msgbox "Houve um problema ao autenticar o usuário" 8 60
	exit 0
else
	senha=$(cat /\tmp/\authentication/\.senha)

	echo $senha
fi

#!/bin/bash

if [[ ! -d "/tmp/authentication" ]]; then
	whiptail --title "Erro!" --msgbox "Houve um problema ao autenticar o usuário" 8 60
	exit 0
else
	usuario=$(cat /\tmp/\authentication/\.usuario)

	echo $usuario
fi

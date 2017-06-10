#!/bin/bash

usuario=$1
senha=$2

ValidaUsuario() {
	usuarioValido=$(getent passwd $1)

	if [[ -n "$usuarioValido" ]]; then
		echo true
	else
		echo false
	fi
}

ValidaSenha() {
	versaoUbuntu=$(./app/utils/VerificaVersaoUbuntu.sh -c)

	senhaValida=$(echo -e "$1\n" | sudo -S ./app/utils/VerificaVersaoUbuntu.sh -c)

	if [[ "$senhaValida" == "$versaoUbuntu" ]]; then
		echo true
	else
		echo false
	fi
}

validaUsuario=$(ValidaUsuario $usuario)

validaSenha=$(ValidaSenha $senha)

if [[ $validaSenha == "true" && $validaUsuario == "true" ]]; then
	echo true
else
	echo false
fi

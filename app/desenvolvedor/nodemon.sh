#!/bin/bash

usuario=$(./app/utils/UsuarioLogado.sh)

Nodemon() {
	sudo npm install -g nodemon
}

NodeJs() {
	sudo ./app/desenvolvedor/node-js.sh
}

nodejs=$(./app/utils/VerificaInstalacaoNode.sh)

if [[ $node != "true" ]]; then
	NodeJs
	Nodemon
else
	Nodemon
fi
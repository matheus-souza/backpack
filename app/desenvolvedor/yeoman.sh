#!/bin/bash

Yeoman() {
	sudo npm install -g yo
}

NodeJs() {
	sudo ./app/desenvolvedor/node-js.sh
}

nodejs=$(./app/utils/VerificaInstalacaoNode.sh)

if [[ $node != "true" ]]; then
	NodeJs
	Yeoman
else
	Yeoman
fi
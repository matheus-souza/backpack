#!/bin/bash

usuario=$(./app/utils/UsuarioLogado.sh)

AdminMongo() {
	cd /home/$usuario
	
	sudo npm install admin-mongo

	mkdir /home/$usuario/adminMongo

	sudo mv node_modules/admin-mongo/* ./adminMongo
	
	cd /home/$usuario/adminMongo

	sudo npm install
}

MongoDb() {
	sudo ./app/desenvolvedor/mongodb.sh
}

NodeJs() {
	sudo ./app/desenvolvedor/node-js.sh
}

nodejs=$(./app/utils/VerificaInstalacaoNode.sh)
mongodb=$(./app/utils/VerificaInstalacaoMongoDb.sh)

if [[ $node != "true" || mongodb != "true" ]]; then
	MongoDb
	NodeJs
	AdminMongo
else
	AdminMongo
fi



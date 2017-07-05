#!/bin/bash

usuario=$(./app/utils/UsuarioLogado.sh)

AdminMongo() {
	cd /home/$usuario
	
	sudo npm install admin-mongo

	mkdir /home/$usuario/adminMongo

	sudo mv node_modules/admin-mongo -R ./adminMongo
	
	cd /home/$usuario/adminMongo

	#sudo npm install

	#sudo npm upgrade
}

MongoDb() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/mongodb.sh
}

NodeJs() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/node-js.sh
}

nodejs=$(./app/utils/VerificaInstalacaoNode.sh)
mongodb=$(./app/utils/VerificaInstalacaoMongoDb.sh)

echo $nodejs
echo $mongodb

if [[ $node != "true" || mongodb != "true" ]]; then
	MongoDb
	NodeJs
	AdminMongo
else
	AdminMongo
fi



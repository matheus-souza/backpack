#!/bin/bash

senha=$(cat \./\.tmp/\.senha)
usuario=$(cat \./\.tmp/\.usuario)

Concluido() {
	./app/menus/complementares/Concluido.sh
}

AdminMongo() {
	#chamar node
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/admin-mongo.sh
}

AndrodStudio() {
	#verifica se java ta instalado e chamar java
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/android-studio.sh
}

Curl() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/curl.sh
}

Eclipse() {
	#verifica se java ta instalado e chamar java
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/eclipse.sh
}

GitKraken() {
	#Chamar git
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/git-kraken.sh
}

Git() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/git.sh
}

JavaJdk() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/java-jdk.sh
}

MongoDb() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/mongodb.sh
}

Netbeans() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/netbeans.sh
}

NodeJs() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/node-js.sh
}

Nodemon() {
	#verificar se node ta instalado e chamar node
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/nodemon.sh
}

PhpStorm() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/php-storm.sh
}

PgAdmin() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/pgadmin.sh
}

Postman() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/postman.sh
}

Pycharm() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/pycharm.sh
}

SceneBuilder() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/scenebuilder.sh
}

SublimeText() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/sublime-text.sh
}

WebStorm() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/web-storm.sh
}

Xampp() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/xampp.sh
}

Desenvolvedor() {
	escolha=$(whiptail --title "Menu Básico" --menu "Pacote Básico" 20 78 7 \
	"1" "Instalar todos os programas" \
	"2" "Escolher o que instalar" \
	"3" "O que contém no pacote" \
	"<-" "Voltar para a tela inicial" 3>&1 1>&2 2>&3)
		
	case $escolha in
		1) InstalaTudo ;;
		2) EscolherProgramas ;;
		3) Detalhes ;;
		"<-") Voltar ;;
	esac
}

EmBranco() {
	./app/menus/complementares/EmBranco.sh
}

InstalaTudo() {
	AdminMongo
	AndrodStudio
	Curl
	Eclipse
	GitKraken
	Git
	JavaJdk
	MongoDb
	Netbeans
	NodeJs
	Nodemon
	PhpStorm
	PgAdmin
	Postman
	Pycharm
	SceneBuilder
	SublimeText
	WebStorm
	Xampp
}

EscolherProgramas() {
	checkBox=$(whiptail --title "Backpack" --separate-output --checklist \
	"Escolha os programas para instalar" 20 78 8 \
	"AdminMongo" "" OFF \
	"Android Studio" "" OFF \
	"Curl" "" OFF \
	"Eclipse" "" OFF \
	"GitKraken" "" OFF \
	"Git" "" OFF \
	"Java JDK" "" OFF \
	"MongoDB" "" OFF \
	"NetBeans" "" OFF \
	"NodeJS" "" OFF \
	"Nodemon" "" OFF \
	"PHP Storm" "IDE para PHP" OFF \
	"Pg Admin" "" OFF \
	"Postman" "" OFF \
	"PyCharm" "" OFF \
	"SceneBuilder" "" OFF \
	"Sublime Text" "" OFF \
	"WebStorm" "" OFF \
	"Xampp" "Ambiente de desenvolvimento PHP" OFF 3>&1 1>&2 2>&3)

	echo "$checkBox" | while read item
	do
		case $item in
			"AdminMongo") AdminMongo ;;
			"Android Studio") AndrodStudio ;;
			"Curl") Curl ;;
			"Eclipse") Eclipse ;;
			"GitKraken") GitKraken ;;
			"Git") Git ;;
			"Java JDK") JavaJdk ;;
			"MongoDB") MongoDb ;;
			"NetBeans") Netbeans ;;
			"NodeJS") NodeJs ;;
			"Nodemon") Nodemon ;;
			"PHP Storm") PhpStorm ;;
			"Pg Admin") PgAdmin ;;
			"Postman") Postman ;;
			"PyCharm") Pycharm ;;
			"SceneBuilder") SceneBuilder ;;
			"Sublime Text") SublimeText ;;
			"WebStorm") WebStorm ;;
			"Xampp") Xampp ;;
			*) EmBranco ;;
		esac
	done

	if [[ "$checkBox" != "" ]]; then
		Concluido
	fi
	Desenvolvedor
}

Detalhes() {
	./app/menus/detalhes/Basico.sh
	Desenvolvedor
}

Voltar() {
	./app/menus/Principal.sh
}

Desenvolvedor
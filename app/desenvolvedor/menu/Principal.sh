#!/bin/bash

senha=$(./app/utils/SenhaUsuarioLogado.sh)
usuario=$(./app/utils/UsuarioLogado.sh)

Concluido() {
	./app/menus/complementares/Concluido.sh
}

AdminMongo() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/admin-mongo.sh
}

AndrodStudio() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/android-studio.sh
}

Curl() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/curl.sh
}

Docker() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/docker-ce.sh
}

Eclipse() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/eclipse.sh
}

GitKraken() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/git-kraken.sh
}

Git() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/git.sh
}

JavaJdk() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/java-jdk.sh
}

Meld() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/meld.sh
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
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/nodemon.sh
}

OpenJdk() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/open-jdk.sh
}

Php70() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/php70.sh
}

Php71() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/php71.sh
}

PhpStorm() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/php-storm.sh
}

Python3() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/python3.sh
}

PipPython3() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/pip-python3.sh
}

PgActivity() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/pg-activity.sh
}

PgAdmin() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/pgadmin.sh
}

Postgresql() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/postgresql.sh
}

Portainer() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/portainer.sh
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

Vagrant() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/vagrant.sh
}

WebStorm() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/web-storm.sh
}

Xampp() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/xampp.sh
}

Yeoman() {
	echo -e "$senha\n" | sudo -S ./app/desenvolvedor/yeoman.sh
}


Desenvolvedor() {
	escolha=$(whiptail --title "Menu Desenvolvedor" --menu "Pacote Desenvolvedor" 20 78 7 \
	"1" "O que contém no pacote" \
	"2" "Instalar todos os programas" \
	"3" "Escolher o que instalar" \
	"<-" "Voltar para a tela inicial" 3>&1 1>&2 2>&3)
		
	case $escolha in
		1) Detalhes ;;
		2) InstalaTudo ;;
		3) EscolherProgramas ;;
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
	Docker
	Eclipse
	GitKraken
	Git
	JavaJdk
	MongoDb
	Meld
	Netbeans
	NodeJs
	Nodemon
	OpenJdk
	Php70
	Php71
	PhpStorm
	Python3
	PipPython3
	PgActivity
	PgAdmin
	Portainer
	Postgresql
	Postman
	Pycharm
	SceneBuilder
	SublimeText
	Vagrant
	WebStorm
	Xampp
	Yeoman
	Concluido
	Desenvolvedor
}

EscolherProgramas() {
	checkBox=$(whiptail --title "Backpack" --separate-output --checklist \
	"Escolha os programas para instalar" 20 78 13 \
	"AdminMongo" "Interface Web para MongoDB" OFF \
	"Android Studio" "IDE para Android" OFF \
	"Curl" "Ferramenta para criar requisições" OFF \
	"Docker" "Plataforma de administração de containers" OFF \
	"Eclipse" "IDE multi-linguagem" OFF \
	"GitKraken" "Cliente gráfico para Git" OFF \
	"Git" "Sistema de controle de versão" OFF \
	"Java JDK" "Pacote de desenvolvimento Java" OFF \
	"Meld" "Comparador de arquivos" OFF \
	"MongoDB" "Banco de dados não relacional" OFF \
	"NetBeans" "IDE multi-linguagem" OFF \
	"NodeJS" "Plataforma para desenvolvimento de aplicações" OFF \
	"Nodemon" "File watcher que roda o comando node" OFF \
	"OpenJdk" "Pacote de desenvolvimento Java" OFF \
	"Php7.0" "Linguagem de programação" OFF \
	"Php7.1" "Linguagem de programação" OFF \
	"PHP Storm" "IDE para PHP" OFF \
	"Python3" "Linguagem de programação Python versão 3.x" OFF \
	"Pip Python3" "Gerenciador de pacotes do Python 3" OFF \
	"PgActivity" "Monitorador de servidor PostgreSQL" OFF \
	"PgAdmin" "Software para administração do PostgreSQL" OFF \
	"Portainer" "Gerenciador gráfico para Docker" OFF \
	"Postgresql" "Banco de dados relacional" OFF \
	"Postman" "Cliente REST" OFF \
	"PyCharm" "IDE para Python" OFF \
	"SceneBuilder" "Criador de layout para JavaFX" OFF \
	"Sublime Text" "Editor de texto e código-fonte" OFF \
	"Vagrant" "Ferramenta de criação de ambientes virtuais" OFF \
	"WebStorm" "IDE para tecnologias web" OFF \
	"Xampp" "Ambiente de desenvolvimento PHP" OFF \
	"Yeoman" "Stack que automatiza seu build" OFF 3>&1 1>&2 2>&3 )

	echo "$checkBox" | while read item
	do
		case $item in
			"AdminMongo") AdminMongo ;;
			"Android Studio") AndrodStudio ;;
			"Curl") Curl ;;
			"Docker") Docker ;;
			"Eclipse") Eclipse ;;
			"GitKraken") GitKraken ;;
			"Git") Git ;;
			"Java JDK") JavaJdk ;;
			"Meld") Meld ;;
			"MongoDB") MongoDb ;;
			"NetBeans") Netbeans ;;
			"NodeJS") NodeJs ;;
			"Nodemon") Nodemon ;;
			"OpenJdk") OpenJdk ;;
			"Php7.0") Php70 ;;
			"Php7.1") Php71 ;;
			"PHP Storm") PhpStorm ;;
			"Python3") Python3 ;;
			"Pip Python3") PipPython3 ;;
			"PgActivity") PgActivity ;;
			"PgAdmin") PgAdmin ;;
			"Portainer") Portainer ;;
			"Postgresql") Postgresql ;;
			"Postman") Postman ;;
			"PyCharm") Pycharm ;;
			"SceneBuilder") SceneBuilder ;;
			"Sublime Text") SublimeText ;;
			"Vagrant") Vagrant ;;
			"WebStorm") WebStorm ;;
			"Xampp") Xampp ;;
			"Yeoman") Yeoman ;;
			*) EmBranco ;;
		esac
	done

	if [[ "$checkBox" != "" ]]; then
		Concluido
	fi
	Desenvolvedor
}

Detalhes() {
	./app/desenvolvedor/menu/Detalhes.sh
	Desenvolvedor
}

Voltar() {
	./app/menus/Principal.sh	
}

Desenvolvedor
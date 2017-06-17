#!/bin/bash

senha=$(cat /\tmp/\authentication/\.senha)
usuario=$(cat /\tmp/\authentication/\.usuario)

Concluido() {
	./app/menus/complementares/Concluido.sh
}

Dropbox() {
	echo -e "$senha\n" | sudo -S ./app/adicionais/dropbox.sh
}

Franz() {
	echo -e "$senha\n" | sudo -S ./app/adicionais/franz.sh
}

GoogleChrome() {
	echo -e "$senha\n" | sudo -S ./app/adicionais/google-chrome.sh
}

Kdenlive() {
	echo -e "$senha\n" | sudo -S ./app/adicionais/kdenlive.sh
}

PinguyBuilder() {
	echo -e "$senha\n" | sudo -S ./app/adicionais/pinguybuilder.sh
}

SimpleScreenRecorder() {
	echo -e "$senha\n" | sudo -S ./app/adicionais/simple-recorder.sh
}

SafeEyes() {
	echo -e "$senha\n" | sudo -S ./app/adicionais/safeeyes.sh
}

Spotify() {
	echo -e "$senha\n" | sudo -S ./app/adicionais/spotify.sh
}

Transmageddon() {
	echo -e "$senha\n" | sudo -S ./app/adicionais/transmageddon.sh
}

Virtualbox() {
	echo -e "$senha\n" | sudo -S ./app/adicionais/virtualbox.sh
}

Adicionais() {
	escolha=$(whiptail --title "Menu Adicionais" --menu "Pacote Adicionais" 20 78 7 \
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
	Dropbox
	Franz
	GoogleChrome
	Kdenlive
	PinguyBuilder
	SimpleScreenRecorder
	SafeEyes
	Spotify
	Transmageddon
	Virtualbox
}

EscolherProgramas() {
	checkBox=$(whiptail --title "Backpack" --separate-output --checklist \
	"Escolha os programas para instalar" 20 78 8 \
	"Dropbox" "" OFF \
	"Franz" "Agregador de chats" OFF \
	"Google Chrome" "Navegador" OFF \
	"Kdenlive" "Editor de videos" OFF \
	"PinguyBuilder" "" OFF \
	"Simple Screen Recorder" "Gravador de tela" OFF \
	"SafeEyes" "" OFF \
	"Spotify" "Player de músicas" OFF \
	"Transmageddon" "Conversor de videos" OFF \
	"VirtualBox" "Virtualizador" OFF 3>&1 1>&2 2>&3)

	echo "$checkBox" | while read item
	do
		case $item in
			"Dropbox") Dropbox ;;
			"Franz") Franz ;;
			"Google Chrome") GoogleChrome ;;
			"Kdenlive") Kdenlive ;;
			"PinguyBuilder") PinguyBuilder ;;
			"Simple Screen Recorder") SimpleScreenRecorder ;;
			"SafeEyes") SafeEyes ;;
			"Spotify") Spotify ;;
			"Transmageddon") Transmageddon ;;
			"VirtualBox") Virtualbox ;;
			*) EmBranco ;;
		esac
	done

	if [[ "$checkBox" != "" ]]; then
		Concluido
	fi
	Adicionais
}

Detalhes() {
	./app/adicionais/menu/Detalhes.sh
	Adicionais
}

Voltar() {
	./app/menus/Principal.sh
}

Adicionais
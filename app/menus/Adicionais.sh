#!/bin/bash

senha=$(cat \./\.tmp/\.senha)
usuario=$(cat \./\.tmp/\.usuario)

Concluido() {
	./app/menus/complementares/Concluido.sh
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

Adicionais() {
	escolha=$(whiptail --title "Menu Adicionais" --menu "Pacote Adicionais" 20 78 7 \
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
	Franz
	GoogleChrome
	Kdenlive
	SimpleScreenRecorder
	SafeEyes
	Spotify
	Transmageddon
}

EscolherProgramas() {
	checkBox=$(whiptail --title "Backpack" --separate-output --checklist \
	"Escolha os programas para instalar" 20 78 8 \
	"Franz" "Agregador de chats" OFF \
	"Google Chrome" "Navegador" OFF \
	"Kdenlive" "Editor de videos" OFF \
	"Simple Screen Recorder" "Gravador de tela" OFF \
	"SafeEyes" "" OFF \
	"Spotify" "Player de músicas" OFF \
	"Transmageddon" "Conversor de videos" OFF 3>&1 1>&2 2>&3)

	echo "$checkBox" | while read item
	do
		case $item in
			"Franz") Franz ;;
			"Google Chrome") GoogleChrome ;;
			"Kdenlive") Kdenlive ;;
			"Simple Screen Recorder") SimpleScreenRecorder ;;
			"SafeEyes") SafeEyes ;;
			"Spotify") Spotify ;;
			"Transmageddon") Transmageddon ;;
			*) EmBranco ;;
		esac
	done

	if [[ "$checkBox" != "" ]]; then
		Concluido
	fi
	Adicionais
}

Detalhes() {
	./app/menus/detalhes/Adicionais.sh
	Adicionais
}

Voltar() {
	./app/menus/Principal.sh
}

Adicionais
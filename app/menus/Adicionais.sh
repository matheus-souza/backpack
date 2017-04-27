#!/bin/bash

senha=0
usuario=0

senha=$(cat \./\.tmp/\.senha)
usuario=$(cat \./\.tmp/\.usuario)

MenuConcluidoAdicionais() {
	./app/menus/complementares/Concluido.sh
}

#Franz() {}

#GoogleChrome() {}

#Kdenlive() {}

#SimpleScreenRecorder() {}

#Spotify() {}

#Transmageddon() {}

MenuAdicionais() {
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
	"Spotify" "Player de músicas" OFF \
	"Transmageddon" "Conversor de videos" OFF 3>&1 1>&2 2>&3)

	statusCheck=$?
	if [ $statusCheck = 0 ]
	then
		echo "$checkBox" | while read LINHA
		do
	 		#echo "$LINHA"
			if [ "$LINHA" = "Franz" ];
			then
				Franz
			fi
			if [ "$LINHA" = "GoogleChrome" ];
			then
				GoogleChrome
			fi
			if [ "$LINHA" = "Kdenlive" ];
			then
				Kdenlive
			fi
			if [ "$LINHA" = "SimpleScreenRecorder" ];
			then
				SimpleScreenRecorder
			fi
			if [ "$LINHA" = "Spotify" ];
			then
				Spotify
			fi
			if [ "$LINHA" = "Transmageddon" ];
			then
				Transmageddon
			fi
		done
	else
		EmBranco
		MenuAdicionais
	fi
	MenuConcluidoAdicionais
	MenuAdicionais
}

Detalhes() {
	./app/menus/detalhes/Adicionais.sh
}

Voltar() {
	./app/menus/Principal.sh
}

MenuAdicionais
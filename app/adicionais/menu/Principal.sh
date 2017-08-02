#!/bin/bash

senha=$(./app/utils/SenhaUsuarioLogado.sh)
usuario=$(./app/utils/UsuarioLogado.sh)

Concluido() {
	./app/menus/complementares/Concluido.sh
}

Dropbox() {
	echo -e "$senha\n" | sudo -S ./app/adicionais/dropbox.sh
}

Franz() {
	echo -e "$senha\n" | sudo -S ./app/adicionais/franz.sh
}

Geogebra() {
	echo -e "$senha\n" | sudo -S ./app/adicionais/geogebra.sh
}

GoogleChrome() {
	echo -e "$senha\n" | sudo -S ./app/adicionais/google-chrome.sh
}

Ireport() {
	echo -e "$senha\n" | sudo -S ./app/adicionais/ireport-413.sh
}

Kdenlive() {
	echo -e "$senha\n" | sudo -S ./app/adicionais/kdenlive.sh
}

MasterPdf() {
	echo -e "$senha\n" | sudo -S ./app/adicionais/master-pdf.sh
}

PinguyBuilder() {
	echo -e "$senha\n" | sudo -S ./app/adicionais/pinguybuilder.sh
}

Resetter() {
	echo -e "$senha\n" | sudo -S ./app/adicionais/resetter.sh
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
	Geogebra
	GoogleChrome
	Ireport
	Kdenlive
	MasterPdf
	PinguyBuilder
	Resetter
	SimpleScreenRecorder
	SafeEyes
	Spotify
	Transmageddon
	Virtualbox
	Concluido
	Adicionais
}

EscolherProgramas() {
	checkBox=$(whiptail --title "Backpack" --separate-output --checklist \
	"Escolha os programas para instalar" 20 78 12 \
	"Dropbox" "Serviço para armazenamento de arquivos" OFF \
	"Franz" "Agregador de chats" OFF \
	"Geogebra" "Programa de construção de gráficos" OFF \
	"Google Chrome" "Navegador" OFF \
	"IReport" "Gerador de relatórios" OFF \
	"Kdenlive" "Editor de videos" OFF \
	"MasterPdf" "Editor de PDF" OFF \
	"PinguyBuilder" "Remasterizador de sistema" OFF \
	"Resetter" "Programa de reset do sistema" OFF \
	"Simple Screen Recorder" "Gravador de tela" OFF \
	"SafeEyes" "Alerta de descanso dos olhos" OFF \
	"Spotify" "Player de músicas" OFF \
	"Transmageddon" "Conversor de videos" OFF \
	"VirtualBox" "Virtualizador" OFF 3>&1 1>&2 2>&3)

	echo "$checkBox" | while read item
	do
		case $item in
			"Dropbox") Dropbox ;;
			"Franz") Franz ;;
			"Geogebra") Geogebra ;;
			"Google Chrome") GoogleChrome ;;
			"IReport") Ireport ;;
			"Kdenlive") Kdenlive ;;
			"MasterPdf") MasterPdf ;;
			"PinguyBuilder") PinguyBuilder ;;
			"Resetter") Resetter ;;
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
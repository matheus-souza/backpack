#!/bin/bash

senha=$(cat /\tmp/\authentication/\.senha)
usuario=$(cat /\tmp/\authentication/\.usuario)

Concluido() {
	./app/menus/complementares/Concluido.sh
}

Gimp() {
	echo -e "$senha\n" | sudo -S ./app/basicos/gimp.sh
}

Gksu() {
	echo -e "$senha\n" | sudo -S ./app/basicos/gksu.sh
}

Inkscape() {
	echo -e "$senha\n" | sudo -S ./app/basicos/inkscape.sh
}

RarUnrar() {
	echo -e "$senha\n" | sudo -S ./app/basicos/rarunrar.sh
}

RestrictedExtras() {
	echo -e "$senha\n" | sudo -S ./app/basicos/restricted-extras.sh
}

UnityTweakTool() {
	echo -e "$senha\n" | sudo -S ./app/basicos/unity-tweak-tool.sh
}

Basico() {
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
	Gimp
	Gksu
	Inkscape
	RarUnrar
	RestrictedExtras
	UnityTweakTool
}

EscolherProgramas() {
	checkBox=$(whiptail --title "Backpack" --separate-output --checklist \
	"Escolha os programas para instalar" 20 78 8 \
	"Gimp" "Editor de fotos" OFF \
	"Gksu" "Interface gráfica do sudo" OFF \
	"Inkscape" "Editor de imagens vetoriais" OFF \
	"Rar" "Descompactador de arquivos" OFF \
	"Ubuntu Restricted Extras" "Software essenciais" OFF \
	"Unity Tweak Tools" "Ferramentas de edição do Unity" OFF 3>&1 1>&2 2>&3)

	echo "$checkBox" | while read item
	do
		case $item in
			"Gimp") Gimp ;;
			"Gksu") Gksu ;;
			"Inkscape") Inkscape ;;
			"Rar") Rar ;;
			"Ubuntu Restricted Extras") RestrictedExtras ;;
			"Unity Tweak Tools") UnityTweakTool ;;
			*) EmBranco ;;
		esac
	done

	if [[ "$checkBox" != "" ]]; then
		Concluido
	fi
	Basico
}

Detalhes() {
	./app/menus/detalhes/Basico.sh
	Basico
}

Voltar() {
	./app/menus/Principal.sh
}

Basico
#!/bin/bash

senha=0
usuario=0

senha=$(cat \./\.tmp/\.senha)
usuario=$(cat \./\.tmp/\.usuario)

MenuConcluidoBasico() {
	./app/menus/concluidos/ConcluidoBasico.sh
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

MenuBasico() {
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
	checkBox=$(whiptail --title "scrips-ubuntu" --separate-output --checklist \
	"Escolha os programas para instalar" 20 78 8 \
	"Gimp" "Editor de fotos" OFF \
	"Gksu" "Interface gráfica do sudo" OFF \
	"Inkscape" "Editor de imagens vetoriais" OFF \
	"Rar" "Descompactador de arquivos" OFF \
	"Ubuntu Restricted Extras" "Software essenciais" OFF \
	"Unity Tweak Tools" "Ferramentas de edição do Unity" OFF 3>&1 1>&2 2>&3)

	statusCheck=$?
	if [ $statusCheck = 0 ]
	then
		echo "$checkBox" | while read LINHA
		do
	 		#echo "$LINHA"
			if [ "$LINHA" = "Gimp" ];
			then
				Gimp
			fi
			if [ "$LINHA" = "Gksu" ];
			then
				Gksu
			fi
			if [ "$LINHA" = "Inkscape" ];
			then
				Inkscape
			fi
			if [ "$LINHA" = "Rar" ];
			then
				RarUnrar
			fi
			if [ "$LINHA" = "Ubuntu Restricted Extras" ];
			then
				RestrictedExtras
			fi
			if [ "$LINHA" = "Unity Tweak Tools" ];
			then
				UnityTweakTool
			fi
		done
	else
		EmBranco
		MenuBasico
	fi
	MenuConcluidoBasico
	MenuBasico
}

Detalhes() {
	./app/menus/detalhes/DetalhesBasico.sh
}

Voltar() {
	./app/menus/MenuPrincipal.sh
}

MenuBasico

##echo "antes do em branco"

#./app/menus/complementares/EmBranco.sh

##echo "passou"
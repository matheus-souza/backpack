#!/bin/bash

senha=0
usuario=0

#Gimp() {}

#Gksu() {}

#Inkscape() {}

#RarUnrar() {}

#RestrictedExtras() {}

#UnityTweakTool() {}

MenuBasico() {
	escolha=$(whiptail --title "Menu Facius" --menu "Pacote Básico" 20 78 7 \
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
	fi
	MenuBasico
}

Detalhes() {
	whiptail --title "Facius" --msgbox "Gimp -> Editor de fotos\nGksu -> Interface gráfica do sudo\nGoogle Chrome -> Navegador\nInkscape -> Editor de imagens vetoriais\nKdenlive -> Editor de Vídeos\nRar -> Descompactador de arquivos\nUbuntu Restricted Extras -> Software essenciais\nTransmageddon -> Decodificador de vídeo" 14 78
	MenuBasico
}

Voltar() {
	./app/menus/MenuPrincipal.sh
}

MenuBasico

echo "antes do em branco"

./app/menus/complementares/EmBranco.sh

echo "passou"
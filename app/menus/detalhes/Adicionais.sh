#!/bin/bash

MenuAdicionais() {
	./app/menus/Adicionais.sh
}

DetalhesAdicionais() {
	whiptail --title "Detalhes pacote adicionais" --msgbox "
		Franz -> Agregador de chats
		Google Chrome -> Navegador
		Kdenlive -> Editor de videos
		Simple Screen Recorder -> Gravador de tela
		Spotify -> Player de músicas
		Transmageddon -> Conversor de videos" 14 78
	MenuAdicionais
}

DetalhesAdicionais
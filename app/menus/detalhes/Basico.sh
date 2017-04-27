#!/bin/bash

MenuBasico() {
	./app/menus/Basico.sh
}

DetalhesBasico() {
	whiptail --title "Detalhes pacote básico" --msgbox "
		Gimp -> Editor de fotos
		Gksu -> Interface gráfica do sudo
		Inkscape -> Editor de imagens vetoriais
		Rar -> Descompactador de arquivos
		Ubuntu Restricted Extras -> Software essenciais
		Unity Tweak Tools -> Utilitario de edição do Unity" 14 78
	MenuBasico
}

DetalhesBasico

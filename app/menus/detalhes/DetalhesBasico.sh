#!/bin/bash

MenuBasico() {
	./app/menus/MenuBasico.sh
}

DetalhesBasico() {
	whiptail --title "Facius" --msgbox "
		Gimp -> Editor de fotos\n
		Gksu -> Interface gráfica do sudo\n
		Inkscape -> Editor de imagens vetoriais\n
		Rar -> Descompactador de arquivos\n
		Ubuntu Restricted Extras -> Software essenciais\n
		Unity Tweak Tools -> Utilitario de edição do Unity" 14 78
	MenuBasico
}

DetalhesBasico

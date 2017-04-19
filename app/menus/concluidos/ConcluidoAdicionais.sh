#!/bin/bash

MenuAdicionais() {
	./app/menus/MenuAdicionais.sh
}

ConcluidoAdicionais(){
	whiptail --title "scripts-ubuntu" --msgbox "A operação desejada acaba de ser concluída, pressione enter para prosseguir." 8 78
	MenuAdicionais
}

ConcluidoAdicionais
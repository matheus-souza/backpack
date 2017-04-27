#!/bin/bash

MenuBasico() {
	./app/menus/MenuBasico.sh
}

ConcluidoBasico(){
	whiptail --title "scripts-ubuntu" --msgbox "A operação desejada acaba de ser concluída, pressione enter para prosseguir." 8 78
}

ConcluidoBasico
#!/bin/bash

MenuPrincipal() {
	../menus/MenuPrincipal.sh
}

Concluido(){
	whiptail --title "scripts-ubuntu" --msgbox "A operação desejada acaba de ser concluída, pressione enter para prosseguir." 8 78
	MenuPrincipal
}

Concluido

#direto=0
#direto=$(pwd)
#echo $direto

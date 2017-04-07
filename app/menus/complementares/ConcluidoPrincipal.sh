#!/bin/bash

MenuPrincipal() {
	./app/menus/MenuPrincipal.sh
}

ConcluidoPrincipal(){
	whiptail --title "scripts-ubuntu" --msgbox "A operação desejada acaba de ser concluída, pressione enter para prosseguir." 8 78
	MenuPrincipal
}

ConcluidoPrincipal

#direto=0
#direto=$(pwd)
#echo $direto

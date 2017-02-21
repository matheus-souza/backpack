#!/bin/bash

senha=0
usuario=0

direto=0
direto=$(pwd)
echo $direto

senha=$(cat \./\.tmp/\.senha)
#echo $senha

usuario=$(cat \./\.tmp/\.usuario)
#echo $usuario

MenuAtualizador() {
	./app/complementares/atualiza.sh
}

#MenuLimpaSistema() {
	#CHAMA LIMPA SISEMA
#}

MenuBasico() {
	./app/menus/MenuBasico.sh
}

MenuDesenvolvedor() {
	./app/menus/MenuDesenvolvedor.sh
}

MenuAdicionais() {
	./app/menus/MenuAdicionais.sh
}


itemSelecionado=$(whiptail --title "Menu scripts-ubuntu" --menu "Selecione uma das opções" 20 78 7 \
	"1" "Atualizar lista de repositórios e atualizar programas" \
	"2" "" \
	"3" "Pacote básico" \
	"4" "" \
	"5" "Pacote Adicionais" 3>&1 1>&2 2>&3)
	
case $itemSelecionado in
	1) MenuAtualizador ;;
	2) MenuLimpaSistema ;;
	3) MenuBasico ;;
	4) MenuDesenvolvedor ;;
	5) MenuAdicionais ;;
esac
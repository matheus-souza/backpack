#!/bin/bash

senha=0
usuario=0

#direto=0
#direto=$(pwd)
#echo $direto

senha=$(cat \./\.tmp/\.senha)
#echo $senha

usuario=$(cat \./\.tmp/\.usuario)
#echo $usuario

MenuAtualizador() {
	echo -e "$senha\n" | sudo -S ./app/complementares/atualiza.sh
}

MenuReseteUnity() {
	./app/complementares/reseteUnity.sh
}

MenuLimpaSistema() {
	echo -e "$senha\n" | sudo -S ./app/complementares/limpeza.sh
}

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
	"2" "Limpar lixos do sistema" \
	"3" "Resetar Unity" \
	"4" "Pacote básico" \
	"5" "Pacote desenvolvedor" \
	"6" "Pacote adicionais" 3>&1 1>&2 2>&3)
	
case $itemSelecionado in
	1) MenuAtualizador ;;
	2) MenuLimpaSistema ;;
	3) MenuReseteUnity ;;
	4) MenuBasico ;;
	5) MenuDesenvolvedor ;;
	6) MenuAdicionais ;;
esac
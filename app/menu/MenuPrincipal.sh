#!/bin/bash

itemSelecionado=$(whiptail --title "Menu Facius" --menu "Selecione uma das opções" 20 78 7 \
	"1" "Atualizar lista de repositórios e atualizar programas" \
	"2" "Pacote básico" \
	"3" "Pacote de desenvolvedor" \
	"4" "Pacote Adicionais" \
	"5" "Quem faz" 3>&1 1>&2 2>&3)
	
case $itemSelecionado in
	1) ChamarAtualizador ;;
	2) ChamarLimpaSistema ;;
	3) CahamarMenuBasico ;;
	4) ChamarMenuDesenvolvedor ;;
	5) CahamarMenuAdicionais ;;
esac
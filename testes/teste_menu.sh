#!/bin/bash

variavelTeste=0

TesteFuncao() {
	./testenovo.sh
}


EscolheBasico(){
	checkbasico=$(whiptail --title "Backpack" --separate-output --checklist \
	"Escolha os programas para instalar" 20 78 8 \
	"teste" "Decodificador de vídeo" OFF 3>&1 1>&2 2>&3)

		echo "$checkbasico" | while read LINHA
		do
	 		#echo "$LINHA"
			if [ "$LINHA" = "teste" ];
			then
				

				variavelTeste="testando"

				touch ./.senha.txt

				echo $variavelTeste > .senha.txt

				TesteFuncao
			fi
		done
}

EscolheBasico

echo "voltou"
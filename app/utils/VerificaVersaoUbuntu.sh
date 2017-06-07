#!/bin/bash

opcao=$1

if [[ $opcao =~ \-*[h] ]]; then
	echo '######################################'
	echo '#          Opções possiveis          #'
	echo '######################################'
	echo '# -c -> Retorna o codenome da versão #'
	echo '# -r -> Retorna o numero da release  #'
	echo '# -h -> Retorna as opções possiveis  #'
	echo '######################################'
fi

if [[ $opcao =~ \-*[c] ]]; then
	echo $(lsb_release -cs)
fi

if [[ $opcao =~ \-*[r] ]]; then
	echo $(lsb_release -rs)
fi


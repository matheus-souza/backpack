#!/bin/bash

MenuConcluido() {
	./app/menus/complementares/Concluido.sh
}

sudo apt update
sudo apt upgrade -y

direto=0
direto=$(pwd)
echo $direto

MenuConcluido
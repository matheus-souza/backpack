#!/bin/bash

Principal() {
	./app/menus/Principal.sh
}

Concluido() {
	./app/menus/complementares/Concluido.sh
}

sudo apt-get update
sudo apt-get upgrade -y

Concluido
Principal
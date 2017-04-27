#!/bin/bash

MenuConcluidoPrincipal() {
	./app/menus/complementares/Concluido.sh
}

dconf reset -f /org/compiz/

setsid unity

unity --reset-icons

MenuConcluidoPrincipal
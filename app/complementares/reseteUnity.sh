#!/bin/bash

MenuConcluidoPrincipal() {
	./app/menus/concluidos/ConcluidoPrincipal.sh
}

dconf reset -f /org/compiz/

setsid unity

unity --reset-icons

MenuConcluidoPrincipal
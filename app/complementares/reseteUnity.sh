#!/bin/bash

MenuConcluidoPrincipal() {
	./app/menus/complementares/ConcluidoPrincipal.sh
}

dconf reset -f /org/compiz/

setsid unity

unity --reset-icons

MenuConcluidoPrincipal
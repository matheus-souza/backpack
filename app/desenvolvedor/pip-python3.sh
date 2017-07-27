#!/bin/bash

Python3(){
    sudo ./app/desenvolvedor/python3.sh
}

PipPython3(){
    sudo apt-get install -y python3-pip
}

verifypython3=$(./app/utils/VerificaInstalacaoPython3.sh)

if [[ $verifypython3 != "true" ]]; then
    Python3
    PipPython3
else
    PipPython3
fi
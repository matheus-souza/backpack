#!/bin/bash

usuario=$(./app/utils/UsuarioLogado.sh)

wget http://repository.spotify.com/pool/non-free/s/spotify-client/spotify-client_1.0.67.582.g19436fa3-28_amd64.deb -O /home/$usuario/Downloads/spotify-client.deb

sudo dpkg -i /home/$usuario/Downloads/spotify-client.deb

sudo apt-get -f install

sudo rm /home/$usuario/Downloads/spotify-client.deb

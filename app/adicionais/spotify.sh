#!/bin/bash

wget http://repository.spotify.com/pool/non-free/s/spotify-client/spotify-client_1.0.49.125.g72ee7853-83_amd64.deb -O ~/Downloads/spotify-client_1.0.49.125.g72ee7853-83_amd64.deb

sudo dpkg -i ~/Downloads/spotify-client_1.0.49.125.g72ee7853-83_amd64.deb

sudo apt-get -f install

sudo rm ~/Downloads/spotify-client_1.0.49.125.g72ee7853-83_amd64.deb
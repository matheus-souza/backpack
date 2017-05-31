#!/bin/bash

#CHAMAR NODEJS INSTALL

sudo npm install admin-mongo

sudo mv node_modules/admin-mongo/ ./adminMongo

cd /home/matheush/adminMongo

sudo apt-get install nodejs-legacy

sudo npm install

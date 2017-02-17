#!/bin/bash

sudo apt-get install npm
sudo apt-get install nodejs-legacy
sudo npm install admin-mongo
mv node_modules/admin-mongo/ ./adminMongo
sudo npm install
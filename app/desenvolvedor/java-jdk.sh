#!/bin/bash

sudo apt-get purge openjdk* -y

sudo add-apt-repository ppa:webupd8team/java -y

sudo apt-get update

echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections

sudo apt-get install oracle-java8-installer -y

sudo apt-get install oracle-java8-set-default -y

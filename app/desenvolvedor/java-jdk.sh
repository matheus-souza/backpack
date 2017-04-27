#!/bin/bash

sudo apt purge openjdk* -y

sudo add-apt-repository ppa:webupd8team/java -y

sudo apt update

sudo apt install oracle-java8-installer -y

sudo apt install oracle-java8-set-default -y

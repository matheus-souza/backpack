#!/bin/bash

sudo apt-get purge openjdk* -y

sudo add-apt-repository ppa:webupd8team/java -y

sudo apt-get update

sudo apt-get install oracle-java8-installer -y

sudo apt-get install oracle-java8-set-default -y

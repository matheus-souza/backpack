#!/bin/bash

var=0

echo "abrium um fecho"

var=$(cat .senha.txt)

echo $var
rm .senha.txt


sleep 10
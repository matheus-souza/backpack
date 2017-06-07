#!/bin/bash

git=$(which git)

if [[ -n "$git" ]]; then
	echo true
else
	echo false
fi
#!/bin/bash

javac=$(which javac)

if [[ -n "$javac" ]]; then
	echo true
else
	echo false
fi
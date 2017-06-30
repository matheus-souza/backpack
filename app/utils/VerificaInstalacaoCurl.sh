#!/bin/bash

curl=$(which curl)

if [[ -n "$curl" ]]; then
	echo true
else
	echo false
fi
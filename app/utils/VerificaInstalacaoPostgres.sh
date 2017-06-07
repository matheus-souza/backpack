#!/bin/bash

psql=$(which psql)

if [[ -n "$psql" ]]; then
	echo true
else
	echo false
fi
#!/bin/bash

mongo=$(which mongo)
mongod=$(which mongod)

if [[ -n "$mongo" && -n "$mongod" ]]; then
	echo true
else
	echo false
fi
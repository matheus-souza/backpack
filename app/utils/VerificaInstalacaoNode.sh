#!/bin/bash

node=$(which node)
nodejs=$(which nodejs)
npm=$(which npm)

if [[ -n "$node" && -n "$nodejs" && -n "$npm" ]]; then
	echo true
else
	echo false
fi
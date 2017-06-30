#!/bin/bash

node=$(which node)
nodejs=$(which nodejs)
npm=$(which npm)

versaoNode=$(nodejs -v)

if [[ -n "$node" && -n "$nodejs" && -n "$npm" && $versaoNode < 6 ]]; then
	echo true
else
	echo false
fi
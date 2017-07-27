#!/bin/bash

callpython=$(which python3)

if [[ -n "$callpython" ]]; then
    echo true
else
    echo false
fi
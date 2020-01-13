#!/bin/bash

if [[ $# -ne 1 ]]
then
    echo "Bad number of arguments"
    exit 1
fi

cd config

echo "Switching to $1"

sed -i -re "s/^([^#].*)[A-Z]$/\1$1/g" suite.def

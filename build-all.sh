#!/bin/bash

if [[ -z $REBUILD ]]
then 
    make clean
    rm bin/*
fi

for VALUE in S A B C D E F
do
    ./set-suite.sh $VALUE
    make suite
done


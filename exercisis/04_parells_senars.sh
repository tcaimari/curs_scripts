#!/bin/bash

PARELLS=0
SENARS=0

while [ ${#} -gt 0 ]
do
    if [ $(($1 % 2)) -eq 0 ]
    then
        PARELLS=$(($PARELLS + 1))
    else
        SENARS=$(($SENARS + 1))
    fi
    shift
done

echo "Parells: $PARELLS"
echo "Senars: $SENARS"
#!/bin/bash
#CONTROL D'ERRORS
if [ ${#} -eq 0 ]; then
    echo "has de posar al manco un parametre"
    exit 1
fi

MAXIM=${1}

while [ ${#} -gt 0 ]; do
    if [ ${1} -gt $MAXIM ]; then
    #entram si el numero següent es major que el maxim
        MAXIM=${1}
    fi
    shift
done

echo "El maxim ${MAXIM}"
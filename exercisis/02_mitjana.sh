#!/bin/bash

#CONTROL D'ERRORS
if [ ${#} -eq 0 ]; then
    echo "has de posar al manco un parametre"
    exit 1
fi

#inicializam a zero
SUMA=0

#guardar la quantitat de numeros
QUANTS=${#}

while [ $# -gt 0 ]; do
    SUMA=$(( SUMA + ${1} ))
    shift
done

#aqui SUMA conte la suma dels parametres
#la mitjana es dividir la suma entre el numero de parametres
MITJANA=$(( SUMA / QUANTS ))

echo "La mitjana val: ${MITJANA}"
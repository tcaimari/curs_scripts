#!/bin/bash

if [[  $# -ne 1 ]]
then 
    echo "Error: se requiere un unico parametro"
    exit 1
fi

#comprobar que realmente tenemos un numero
if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Error se requiere un numero"
    exit 1
fi

echo "vamos a calcular el sumatorio de $1"

#recoger valor de n
n=$1
suma=0

#bucle for
for (( i=2; i<=n; i+=2 ))
do
    suma=$((suma+i))
done

echo "la suma de los numeros pares entre 1 y $n vale $suma"    
#calcular el sumatorio de un numero, por ejemplo sumatorio de 5 es 1+2+3+4+5=15
exit 0
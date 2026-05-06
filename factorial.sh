#!/bin/bash

if [[  $# -ne 1 ]]
then 
    echo "Error: se requiere un unico parametro"
    exit 1
fi

#comprobar que realmente tenemos un numero
if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Error: se requiere un numero"
    exit 1
fi

n=$1
echo "vamos a calcular el factorial de $n"
#factorial de un numero por ejemplo 3 es 3*2*1=6
#recoger valor de n
n=$1
producto=1

#bucle for
for (( i=1;i<=n;i++ ))
do
    producto=$((producto*i))
done

echo "el factorial de $n es $producto"
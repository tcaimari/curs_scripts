#!/bin/bash
function usage(){
    echo "Usage ${0}"
    echo
    echo "has de ser root"
    echo "l'usuari no és pot repetir"
    exit 1 #indica que hi ha hagut una errada
}
#Script per crear un usuari

#primer comporvam si som l'usuari root
if [[ ${UID} -ne 0 ]]
then
    usage
fi
read -p "introdueix el nom complet: " COMMENTS
#demanam el nom d'usuari
read -p "Introdueix el nom d'usuari: " USER_NAME
#demanam el password
read -p "Introdueix el password: " PASSWORD

#creariem l'usuari
useradd -m -c "${COMMENTS}" ${USER_NAME} &> /dev/null
#control de la darrera comanda
if [[ ${?} -ne 0 ]]
then
    echo "Errada creant l'usuari"
    exit 1
fi

#canvi de password
echo "${USER_NAME}:${PASSWORD}" | chpasswd
#comprovam si el canvi de password ha anat bé.
if [[ ${?} -ne 0 ]]
then
    echo "Errada Canviant password"
    exit 1
fi

#fer caducar el password
passwd -e ${USER_NAME}

exit 0
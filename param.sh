#!/bin/bash
function usage(){
    echo "USAGE: ${0} USER_NAME [COMMENTS]"
    echo "COMMENTS conte el nom complet"
    exit 1
}
NUMBER_PARAM=${#}
if [[ ${NUMBER_PARAM} -eq 0 ]]
then
    usage
fi
echo "nombre de parametres: ${NUMBER_PARAM}"

#aprendrem a tractar amb els arguments (com s'anomenen a fora) i parametres
#com s'anomenen a dins
SCRIPT_NAME=${0}
echo "Nom del script ${SCRIPT_NAME}"
#${1}.......${9}
echo "primer parametre: ${1}"
USER_NAME=${1}
echo "USER_NAME: ${USER_NAME}"
echo "segon parametre ${2}"
#!/bin/bash

# CONFIGURACIÓN TELEGRAM
TOKEN="8738215711:AAEva4yY-2c3tfBdAaJhPMYg1Qy1YOHKupw"
CHAT_ID="6639337020"

# FUNCIÓ USAGE
function usage(){
    echo "USAGE: ${0} USER_NAME [MESSAGE]"
    echo "USER_NAME: nombre del usuario"
    echo "MESSAGE: mensaje opcional"
    exit 1
}

# VALIDACIÓ PARÁMETRES
NUMBER_PARAM=${#}

if [[ ${NUMBER_PARAM} -lt 1 ]]
then
    usage
fi

# VARIABLES 
USER_NAME=${1}
shift
MESSAGE=${*}

# MENSAJE FINAL
FINAL_MSG="Usuario: ${USER_NAME}%0AMensaje: ${MESSAGE}"

echo "Enviando mensaje a Telegram..."

# ENVÍO A TELEGRAM
curl -s -X POST "https://api.telegram.org/bot${TOKEN}/sendMessage" \
     -d "chat_id=${CHAT_ID}" \
     -d "text=${FINAL_MSG}"

echo "Mensaje enviado correctamente."
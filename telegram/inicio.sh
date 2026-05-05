#!/bin/bash

# Cargar configuración
source $HOME/.telegram_bot/config

# Mensaje a enviar
MENSAJE="🚀 El servidor se ha iniciado correctamente ✅"

# URL de la API de Telegram
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

# Enviar mensaje
curl -s -X POST $URL -d chat_id="$ID" -d text="$MENSAJE" > /dev/null 2>&1  && echo "✅ Mensaje enviado a Telegram."
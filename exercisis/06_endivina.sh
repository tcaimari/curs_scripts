#!/bin/bash
# endevina -- endevina un nombre entre 1 i 100 en 5 intents

NUMERO=$((RANDOM % 100 + 1))
INTENTS=5
ENCERTAT=0

while [ $INTENTS -gt 0 ]; do
    read -p "Entra un nombre (1-100): " RESPOSTA

    
    if ! [[ "$RESPOSTA" =~ ^[0-9]+$ ]] || [ "$RESPOSTA" -lt 1 ] || [ "$RESPOSTA" -gt 100 ]; then
        echo "Introdueix un nombre entre 1 i 100."
        continue
    fi

    if [ "$RESPOSTA" -eq "$NUMERO" ]; then
        echo "Has encertat! El nombre era $NUMERO."
        ENCERTAT=1
        break
    elif [ "$RESPOSTA" -lt "$NUMERO" ]; then
        INTENTS=$((INTENTS - 1))
        echo "El nombre es mes gran. Et queden $INTENTS intents."
    else
        INTENTS=$((INTENTS - 1))
        echo "El nombre es mes petit. Et queden $INTENTS intents."
    fi
done

if [ $ENCERTAT -eq 0 ]; then
    echo "No has encertat. El nombre era $NUMERO."
fi

exit 1
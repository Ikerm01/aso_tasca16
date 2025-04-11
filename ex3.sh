#!/bin/bash

LOG="usuaris.log"

for i in {1..5}; do
    usuari="usuari$i"
    contrasenya=$(openssl rand -base64 12)
    echo "$usuari:$contrasenya" >> "$LOG"
done

echo "Usuaris generats i guardats a $LOG"


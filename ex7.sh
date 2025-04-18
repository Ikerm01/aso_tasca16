#!/bin/bash
read -p "Introdueix l'hora (HH:MM): " HORA
while true; do
  NOW=$(date +%H:%M)
  if [ "$NOW" == "$HORA" ]; then
    echo "És l'hora!"
    break
  fi
  sleep 30
done


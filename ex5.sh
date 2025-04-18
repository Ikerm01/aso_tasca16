#!/bin/bash

while true; do
  echo "========== MENU =========="
  echo "Directori actual: $(pwd)"
  echo "1. Canviar de directori i llistar fitxers"
  echo "2. Veure un fitxer"
  echo "3. Eliminar un fitxer"
  echo "4. Sortir"
  echo "=========================="
  read -p "Opció: " opcio

  case $opcio in
    1)
      read -p "Introdueix el directori (ENTER per quedar-te al mateix): " directori
      if [ -n "$directori" ]; then
        if [ -d "$directori" ]; then
          cd "$directori"
        else
          echo "Directori no trobat."
          continue
        fi
      fi
      echo "Fitxers al directori actual:"
      ls -l
      ;;
    2)
      read -p "Nom del fitxer a veure: " fitxer
      if [ -f "$fitxer" ]; then
        cat "$fitxer"
      else
        echo "Fitxer no trobat."
      fi
      ;;
    3)
      read -p "Nom del fitxer a eliminar: " fitxer
      if [ -f "$fitxer" ]; then
        rm "$fitxer"
        echo "Fitxer eliminat."
      else
        echo "Fitxer no trobat."
      fi
      ;;
    4)
      echo "Sortint..."
      break
      ;;
    *)
      echo "Opció no vàlida."
      ;;
  esac
  echo ""
done


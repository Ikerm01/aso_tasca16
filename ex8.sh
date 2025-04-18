#!/bin/bash
read -p "Fitxer 1: " f1
read -p "Fitxer 2: " f2

stat1=$(stat -c "%a %s %U" "$f1")
stat2=$(stat -c "%a %s %U" "$f2")

if [ "$stat1" == "$stat2" ]; then
  echo "Són iguals"
else
  echo "Són diferents"
fi

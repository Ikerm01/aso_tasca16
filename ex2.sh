#!/bin/bash

suma=0
parells=0
imparells=0

numeros=$(for i in {1..100}; do echo $RANDOM; done)

echo "$numeros" > numeros_aleatorios.txt

echo "Numero Minimo:"
sort -n numeros_aleatorios.txt | head -n1

echo "Numero Maxim:"
sort -n numeros_aleatorios.txt | tail -n1

while read num; do
  suma=$((suma + num))
  if (( num % 2 == 0 )); then
    parells=$((parells + 1))
  else
    imparells=$((imparells + 1))
  fi
done < numeros_aleatorios.txt

mitjana=$((suma / 100))
echo "Mitjana: $mitjana"
echo "Parells: $parells"
echo "Imparells: $imparells"



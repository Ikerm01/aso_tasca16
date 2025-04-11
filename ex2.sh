#!/bin/bash


numeros=$(for numero in {1..100}; do echo $RANDOM; done)


echo "Numero Minimo"
echo "$numeros" | sort -n | head -n1

echo "Numero Maximo"
echo "$numeros" | sort -n | tail -n1

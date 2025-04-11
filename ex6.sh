#!/bin/bash

echo "Connexions actives i processos associats:"
sudo lsof -i -P -n | grep LISTEN


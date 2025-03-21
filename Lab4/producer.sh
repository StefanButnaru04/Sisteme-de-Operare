#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Introduceti o secventa de numere, separate prin spatiu:"
    read -a numbers
else
    numbers=("$@")
fi

echo "Introduceti un numar p:"
read p

# Filtrăm și afișăm numerele mai mici sau egale cu p
for num in "${numbers[@]}"; do
    if [ $num -le $p ]; then
        echo -n "$num "
    fi
done
echo


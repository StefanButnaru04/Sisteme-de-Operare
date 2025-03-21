#!/bin/bash

# Preluăm secvența de numere de la stdin
if [ -z "$(cat)" ]; then
    echo "NULL"
    exit 1
fi

# Calculăm suma cuburilor numerelor
sum=0
while read -r num; do
    # Verificăm dacă numărul este valid (număr întreg)
    if [[ "$num" =~ ^-?[0-9]+$ ]]; then
        # Calculăm cubul și adunăm la sumă
        cub=$(echo "$num^3" | bc)
        sum=$((sum + cub))
    fi
done

# Afișăm suma calculată
echo "Consumer: computed sum is $sum."

# Ieșim cu codul de succes
exit 0


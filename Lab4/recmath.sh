#!/bin/bash

if [ $# -lt 1 ]
then
    echo -n "Introduceti numar n: "
    read n
else
    n=$1
fi

doi=2
rezultat=1
echo "$rezultat"

for i in `seq 1 $n`
 do
 let rezultat=doi*rezultat
 echo "$rezultat"
done 


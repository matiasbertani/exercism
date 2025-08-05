#!/usr/bin/env bash

first_dna=$1
second_dna=$2

if [[ ! -v 1 || ! -v 2 ]]; then
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
fi


if [[ ${#first_dna} -ne ${#second_dna} ]]; then 
    echo "strands must be of equal length"
    exit 1
fi
sum=0

for (( i=0; i<${#first_dna}; i++ )); do
    if [ ${first_dna:$i:1} != ${second_dna:$i:1} ]; then
        ((sum=sum+1))
    fi
done

echo $sum
#!/usr/bin/env bash
if [[ ! -v 1 || ! -v 2 ]]; then
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
elif [[ "${#1}" -ne "${#2}" ]]; then 
    echo "strands must be of equal length"
    exit 1
fi


first_dna=$1
second_dna=$2
declare -i sum
sum=0
for (( i=0; i<${#first_dna}; i++ )); do
    [[ ${first_dna:i:1} == "${second_dna:i:1}" ]] || sum+=1
done

echo "$sum"
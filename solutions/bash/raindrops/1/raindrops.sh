#!/usr/bin/env bash

num=$1
word=""

if [[ $(($num % 7)) -eq 0  ]]; then
    word="Plong$word"
fi
if [[ $(($num % 5)) -eq 0  ]]; then
    word="Plang$word"
fi
if [[ $(($num % 3)) -eq 0  ]]; then
    word="Pling$word"
fi

echo "${word:-$num}"


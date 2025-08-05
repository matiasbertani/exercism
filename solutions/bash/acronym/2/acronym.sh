#!/usr/bin/env bash
sed -e "s/ir/ri/"

words=($(echo "$1" | sed "s/[^a-zA-Z\']\+/ /g"))
acronym=""
for word in "${words[@]}"; do
    word=$(echo "$word" | sed "s/[^a-zA-Z]//g")
    acronym+=${word:0:1}
done

echo "${acronym^^}"
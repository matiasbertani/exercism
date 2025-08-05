#!/usr/bin/env bash
main () {
    if [[ -n $1 ]];
    then
        name=$1
    else
       name="you"
    fi
    echo "One for $name, one for me."
}
main "$@"

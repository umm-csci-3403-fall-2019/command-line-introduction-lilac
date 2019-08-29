#!/usr/bin/env bash

#Charlot Shaw, Paul Friederichsen

#echo "You provided the arguments:" "$@"

if [[ $# -ne 2 ]]; then
	echo "Error: You must provide 2 arguments, $# provided" 
	exit 1
fi

NUMBER_ARGUMENT="$1" 
PATH_ARGUMENT="$2"

if [[ ! "$NUMBER_ARGUMENT" -ge 0 ]]; then
	echo "Error: The first argument must a number >= 0"
	exit 1
fi

if [[ ! -w "$PATH_ARGUMENT" ]]; then
	echo "Error: The second argument must be a writable directory"
	exit 1
fi

#Extract, untar, and decompress the file
tar xzf NthPrime.tgz -C "$PATH_ARGUMENT"

#move into scratch
cd "$PATH_ARGUMENT"/NthPrime || return 1 

gcc -o NthPrime main.c nth_prime.c
./NthPrime "$NUMBER_ARGUMENT"

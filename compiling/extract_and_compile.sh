#!/bin/bash

#Charlot Shaw, Paul Friederichsen

#echo "You provided the arguments:" "$@"

NUMBER_ARGUMENT="$1" 
PATH_ARGUMENT="$2"

#Extract, untar, and decompress the file
tar xzf NthPrime.tgz -C $PATH_ARGUMENT

#move into scratch
cd $PATH_ARGUMENT/NthPrime

gcc -o NthPrime main.c nth_prime.c
./NthPrime $NUMBER_ARGUMENT

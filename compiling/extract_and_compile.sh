#!/bin/bash

#Charlot Shaw, Paul Friederichsen

echo "You provided the arguments:" "$@"

NUMBER_ARGUMENT="$1" 
PATH_ARGUMENT="$2"

#Extract, untar, and decompress the file
tar xvzf NthPrime.tgz -C $PATH_ARGUMENT

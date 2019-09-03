#!/usr/bin/env bash

#Charlot Shaw, Paul Friederichsen

if [[ $# -ne 2 ]]; then
	echo "Error: You must provide 2 arguments, $# provided" 
	exit 1
fi

FILE_ARGUMENT="$1" 
PATH_ARGUMENT="$2"

if [[ ! -r "$FILE_ARGUMENT" ]]; then
	echo "Error: The first argument must be a readable file"
	exit 1
fi

if [[ ! -w "$PATH_ARGUMENT" ]]; then
	echo "Error: The second argument must be a writable directory"
	exit 1
fi

#Extract, untar, and decompress the file
tar -xzf "$FILE_ARGUMENT" -C "$PATH_ARGUMENT"

INITIAL_DIR=$(pwd)
OUTPUT_FOLDER=$(basename "$FILE_ARGUMENT" .tgz)

cd "$PATH_ARGUMENT" || exit 1

find ./"$OUTPUT_FOLDER" -type f -exec grep -q "DELETE ME!" '{}' \; -delete

tar -czf "$INITIAL_DIR/cleaned_$FILE_ARGUMENT" "$OUTPUT_FOLDER" 


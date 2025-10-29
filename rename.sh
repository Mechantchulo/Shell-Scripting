#!/bin/bash

DIR=~/Documents/Shell-scripting

prefix="backup_"

#loop through all .txt files and rename them
for file in "$DIR"/*.txt; do
    #extract filename without path
    filename=$(basename "$file")

    #rename the file by adding the prefix
    mv "$file" "$DIR/$prefix$filename"
    echo "Rename $filename -> $prefix$filename"
done

echo "All files renamed"

#!/bin/bash

while [ -f ~/Documents/Shell-scripting/testfile ]
do
    echo "File exists as of $(date)"
    sleep 5
done

echo "File deleted at $(date)"

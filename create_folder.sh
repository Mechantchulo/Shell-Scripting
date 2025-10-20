#!/bin/bash

#show the current working directory

echo "Current directory: $(pwd)"

#create a folder

read -p "Enter folder name: " folder_name
read -p "Enter file name: " file_name
mkdir "$folder_name"
echo "$folder_name created"

#Create a file inside the directory

touch "$folder_name/$file_name"
echo "$file_name created"

echo
echo "Done! This is your structure"
ls -ls "$folder_name" 

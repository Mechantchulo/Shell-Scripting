#!/bin/bash
release_file=/etc/os-release

#for Arch based systems
if grep -q "Arch" $release_file
then
    echo "Arch-based system detected"
    sudo pacman -Syu

elif grep -q "Ubuntu" $release_file; then
    echo "Ubuntu-based system detected"
    sudo apt update && sudo apt full-upgrade 

elif grep -q "Kali" $release_file; then
    echo "Kali-based system detected"
    sudo apt update && sudo apt full-upgrade 

elif grep -q "Pop" $release_file; then
    echo "Pop os detected"
    sudo apt update && sudo apt full-upgrade 
elif grep -q "Fedora" $release_file; then
    echo "Fedora-based system detected"
    sudo dnf upgrade --refresh 
else
    echo "Unsupported disto"
    exit 1
fi

echo "System upgrade complete"

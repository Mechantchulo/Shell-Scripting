#!/bin/bash

package=htop

if command -v htop &> /dev/null
then
    echo "htop is already installed"
else
    echo "====Installing htop===="
    sudo apt update && sudo apt install -y $package
    echo "Installation complete"
fi

#!/bin/bash

#blabla 
#fzdjhgfklkjöL

$packageManger="apt-get"

echo "Wellcome to my configuration file"
echo "using package manager: $packageManger"

read -p "do you want to continue (y/n) ?: " yesorno

if [ "$yesorno" = "y" ];
then

    echo "updating system..."
    sudo $packageManger update
    sudo $packageManger upgrade
    echo "...done!"


    echo "installing vim...."
    sudo $packageManger install -y vim 
    echo "...Done installin vim"

    sudo $packageManger install -y mc
    sudo $packageManger install -y htop

    sudo $packageManger install -y gcc 
    sudo $packageManger install -y cmake
    sudo $packageManger install -y i2ctools
    sudo $packageManger install -y gdb

else 
    echo "Terminating"
fi




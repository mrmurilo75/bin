#!/bin/bash

mkdir $HOME/.deb_packs
cd $HOME/.deb_packs && wget 'https://discord.com/api/download?platform=linux&format=deb'
echo -e "\n\tInstalling dsicord deb:" 
ls 
echo "y" | sudo gdebi 'download?platform=linux&format=deb' 
rm -r $HOME/.deb_packs

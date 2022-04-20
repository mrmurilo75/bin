#!/bin/bash

./config/installer-config.sh

cd $HOME/Programs/deb_packs && wget 'https://discord.com/api/download?platform=linux&format=deb'
mv 'download?platform=linux&format=deb' 'discord.deb' 
echo "y" | sudo gdebi 'discord.deb' 


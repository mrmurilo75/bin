#!/bin/bash


if which gdebi
then
	:
else 
	sudo apt install -y gdebi
fi
./install-discord.sh
./install-py3.sh
echo -e "\n\tInstalling default-JDK"
sudo apt-get install -y openjdk-13-jdk
echo -e "\tDONE"

brave-browser 'https://www.jetbrains.com/pycharm/download/#section=linux'


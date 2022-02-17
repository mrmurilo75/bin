#!/bin/bash


if which gdebi
then
	:
else 
	sudo apt install -y gdebi
fi
./install-py3.sh
./install-discord.sh
echo -e "\n\tInstalling default-JDK"
sudo apt-get install -y openjdk-13-jdk
echo -e "\tDONE"


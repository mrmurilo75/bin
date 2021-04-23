#!/bin/bash


if which gdebi
then
	:
else 
	sudo apt install -y gdebi
fi

if which atom
then
	:
else
	mkdir $HOME/.deb_packs
	cd $HOME/.deb_packs
	wget 'https://atom.io/download/deb' 'https://discord.com/api/download?platform=linux&format=deb'
	echo -e "\n\tInstalling all deb packs (atom, discord):"
	echo "yy" | sudo gdebi *deb
	rm -r $HOME/deb_packs
	echo "DONE"
fi
echo -e "\n\tRunning install-github-cli.sh ..."
./install-github-cli.sh
echo -e "\tDONE"
echo -e "\n\tInstalling default-JDK"
sudo apt-get install -y openjdk-13-jdk
echo -e "\tDONE"


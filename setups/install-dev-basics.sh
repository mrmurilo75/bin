#!/bin/bash


if which atom
then
	:
else
	if which gdebi
	then
		mkdir $HOME/.deb_packs && cd $HOME/.deb_packs
		wget "https://atom.io/download/deb"
		echo -e "\n\tInstalling atom as 'deb'"
		echo "yy" | sudo gdebi *deb
		rm -r $HOME/deb_packs
		echo "DONE"
	else
		echo -e "\n\tFailed to install atom because of dependent on gdebi\nPlease install gdebi (with 'sudo apt install -y gdebi' or './apt-extras.sh') and try again"
	fi
fi
echo -e "\n\tRunning install-github-cli.sh ..."
./install-github-cli.sh
echo -e "\tDONE"
echo -e "\n\tInstalling default-JDK"
sudo apt-get install -y default-jdk
echo -e "\tDONE"


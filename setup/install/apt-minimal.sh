#!/bin/bash


echo -e "\nWould you like to install apt-essencials now (this may take a while)? [y/N]  "

read input

if [[ $input =~ ('y'|'Y'|'yes'|'Yes'|'YES') ]]; then
	./apt-essencials.sh
else
	echo -e 'Essencials from apt have NOT been installed!\nPlease run:\n\t setup/install/apt-essencials.sh\nat a convenient moment'
fi

echo -e "\n\tInstalling neovim git lm-sensors psensors --------------\n"
sudo apt-get install -y neovim
sudo apt-get install -y git
sudo apt-get install -y lm-sensors
sudo apt-get install -y psensors
echo -e "\n\tDONE ---------------------------------------------------\n"


#!/bin/bash

echo -e "\n\tInstalling gparted"
sudo apt-get install -y gparted
echo -e "\tDONE"
echo -e "\n\tInstalling neovim"
sudo apt-get install -y neovim
echo -e "\tDONE"
echo -e "\n\tInstalling git"
sudo apt-get install -y git
echo -e "\tDONE"
echo -e "\n\tInstalling lm-sensors"
sudo apt-get install -y lm-sensors
echo -e "\tDONE"
./install-brave-browser.sh

#!/bin/bash

./apt-essentials.sh
./apt-minimal.sh


echo -e "\n\tInstalling gparted xclip vlc gdebicore --------------\n"
sudo apt-get install -y  gparted
sudo apt-get install -y  xclip
sudo apt-get install -y  vlc
sudo apt-get install -y  gdebicore
echo -e "\n\tDONE ---------------------------------------------------\n"


#!/bin/bash

./apt-essentials.sh
./apt-minimal.sh


echo -e "\n\tInstalling ca-certificates curl gnupg lsb-release gparted xclip vlc gdebi-core --------------\n"
sudo apt-get install -y ca-certificates 
sudo apt-get install -y curl
sudo apt-get install -y gnupg 
sudo apt-get install -y lsb-release 
sudo apt-get install -y gparted
sudo apt-get install -y xclip
sudo apt-get install -y vlc
sudo apt-get install -y gdebi-core
echo -e "\n\tDONE ---------------------------------------------------\n"


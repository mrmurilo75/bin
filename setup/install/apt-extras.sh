#!/bin/bash

./apt-essentials.sh
./apt-minimal.sh
./apt-basics.sh
./apt-devs.sh


echo -e "\n\tInstalling transmission simplescreenrecorder gnome-boxes --------------\n"
sudo apt-get install -y transmission 
sudo apt-get install -y simplescreenrecorder
sudo apt-get install -y steam
echo -e "\n\tDONE ---------------------------------------------------\n"


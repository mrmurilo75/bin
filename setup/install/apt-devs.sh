#!/bin/bash

./apt-essentials.sh
./apt-minimal.sh
./apt-basics.sh


echo -e "\n\tInstalling nodejs npm python3 tree inskscape --------------\n"
sudo apt-get install -y nodejs
sudo apt-get install -y npm
sudo apt-get install -y python3 
sudo apt-get install -y python3-dev 
sudo apt-get install -y python3-pip 
sudo apt-get install -y python3-venv 
sudo apt-get install -y tree
sudo apt-get install -y inskscape
echo -e "\n\tDONE ---------------------------------------------------\n"



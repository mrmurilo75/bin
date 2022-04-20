#!/bin/bash


sudo apt update
echo -e "\n\tInstalling neovim git lm-sensors psensors --------------\n"
sudo apt-get install -y neovim
sudo apt-get install -y git
sudo apt-get install -y lm-sensors
sudo apt-get install -y psensors
echo -e "\n\tDONE ---------------------------------------------------\n"


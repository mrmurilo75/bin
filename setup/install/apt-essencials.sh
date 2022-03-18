#!/bin/bash


sudo apt update 
echo -e "\n\tInstalling linux-kernel"
sudo apt-get install -y linux-kernel && sudo update-initramfs && sudo apt update && sudo apt full-upgrade -y
echo -e "\tDONE\n"
echo -e "\n\tInstalling build-essential"
sudo apt-get install -y build-essential gcc-multilib util-linux
echo -e "\tDONE\n"


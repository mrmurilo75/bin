#!/bin/bash


sudo apt update 
echo -e "\n\tInstalling linux-kernel"
sudo apt-get install linux-kernel && sudo update-initramfs && sudo apt update && sudo apt full-upgrade
echo -e "\tDONE\n"
echo -e "\n\tInstalling build-essential"
sudo apt-get install -y build-essential
echo -e "\tDONE\n"
echo -e "\n\tInstalling gcc-multilib"
sudo apt-get install -y gcc-multilib
echo -e "\tDONE\n"
echo -e "\n\tInstalling util-linux"
sudo apt-get install -y util-linux
echo -e "\tDONE\n"


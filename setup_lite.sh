#!/bin/bash

#chmod 744 $0

if [ pwd != ~ ]
then
  cd ~
fi

mkdir bin
mkdir Programs
cd bin

cp $0 .

echo "Previous PATH = $PATH"
export PATH=$PATH:~/bin
echo "New PATH = $PATH"

echo "Installing linux-kernel"
sudo apt-get install linux-kernel && sudo update-initramfs && sudo apt update && sudo apt full-upgrade
echo "DONE"
echo "Installing build-essential"
sudo apt-get install -y build-essential
echo "DONE"
echo "Installing gcc-multilib"
sudo apt-get install -y gcc-multilib
echo "DONE"
echo "Installing util-linux"
sudo apt-get install -y util-linux
echo "DONE"
echo "Installing gparted"
sudo apt-get install -y gparted
echo "DONE"
echo "Installing git"
sudo apt-get install -y git
echo "DONE"
echo "Installing neovim"
sudo apt-get install -y neovim
echo "DONE"
echo "Installing default-JDK"
sudo apt-get install -y default-jdk
echo "DONE"
echo "Installing Great Haskell Compiler"
sudo apt-get install -y ghc
echo "DONE"
echo "Installing gdebi"
sudo apt-get install -y gdebi-core
echo "DONE"

mkdir deb_packs
cd deb_packs
wget "https://atom.io/download/deb" "https://steamcdn-a.akamaihd.net/client/installer/steam.deb" "https://discord.com/api/download?platform=linux&format=deb" "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
echo "Installing the following deb packages:"
ls
echo "yyyy" | sudo gdebi *.deb
echo "DONE"

sudo apt update && sudo apt full-upgrade

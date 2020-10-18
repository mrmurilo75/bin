#!/bin/bash

#chmod 744 $0

sudo apt update 
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
echo "Installing github"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
sudo apt install gh
echo "DONE"
echo "Installing neovim"
sudo apt-get install -y neovim
echo "DONE"
echo "Installing default-JDK"
sudo apt-get install -y default-jdk
echo "DONE"
echo "Installing Brave Browser"
sudo apt-get install apt-transport-https curl
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt-get install -y brave-browser
echo "DONE"
echo "Installing vlc"
sudo apt-get install -y vlc
echo "DONE"
echo "Installing simplescreenrecrder"
sudo apt-get install -y simplescreenrecorder
echo "DONE"
echo "Installing gdebi"
sudo apt-get install -y gdebi-core
echo "DONE"
echo "Changing ESC and CapsLock"
cd ~ && echo "setxkbmap -option caps:swapescape" | cat >> .bashrc
echo "DONE"

mkdir deb_packs
cd deb_packs
wget "https://atom.io/download/deb" "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
echo "Installing the following deb packages:"
ls
echo "yyyy" | sudo gdebi *.deb
echo "DONE"

sudo apt update && sudo apt full-upgrade
sudo apt autoremove -y


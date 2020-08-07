#!/bin/bash

#chmod 744 $0

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
echo "Installing mesa-utils"
sudo apt-get install -y mesa-utils
sudo apt-get install -y libgl1-mesa-dri:i386
sudo apt-get install -y libgl1-mesa-glx:i386
sudo apt-get install -y libgl1-mesa-glx:amd64
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
echo "Installing nodejs"
sudo apt-get install -y nodejs
echo "DONE"
echo "Installing npm"
sudo apt-get install -y npm
echo "DONE"
echo "Installing snapd"
sudo apt-get install -y snapd
echo "DONE"
echo "Installing mesa-vulkan-drivers"
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install libgl1-mesa-dri:i386
sudo apt-get install mesa-vulkan-drivers mesa-vulkan-drivers:i386
echo "DONE"
echo "Installing wine"
wget -O - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-get-key add -
sudo add-apt-get-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
sudo apt-get update
sudo apt-get install --install-recommends winehq-stable
echo "DONE"
echo "Installing Sublime Text"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-get-key add -
sudo apt-get-get install apt-get-transport-https
echo "deb https://download.sublimetext.com/ apt-get/stable/" | sudo tee /etc/apt-get/sources.list.d/sublime-text.list
sudo apt-get-get update
sudo apt-get-get install -y sublime-text
echo "DONE"
echo "Installing Brave Browser"
sudo apt-get install apt-get-transport-https curl
curl -s https://brave-browser-apt-get-release.s3.brave.com/brave-core.asc | sudo apt-get-key --keyring /etc/apt-get/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-get-release.s3.brave.com/ stable main" | sudo tee /etc/apt-get/sources.list.d/brave-browser-release.list
sudo apt-get update
sudo apt-get install -y brave-browser
echo "DONE"
echo "Installing vlc"
echo "
" | snap install -y vlc
echo "DONE"
echo "Installing vokoscreen"
sudo apt-get install -y vokoscreen
echo "DONE"
echo "Installing gdebi"
sudo apt-get-get install -y gdebi-core
echo "DONE"

mkdir deb_packs
cd deb_packs
wget "https://atom.io/download/deb" "https://steamcdn-a.akamaihd.net/client/installer/steam.deb" "https://discord.com/api/download?platform=linux&format=deb"
echo "Installed the following deb packages:"
ls
echo "yyy" | sudo gdebi *.deb
echo "DONE"

chmod 744 setup_intel-3165.sh
echo "*******************************************************"
echo "if necessary run setup_intel-3165.sh"

sudo apt-get autoremove -y

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
sudo apt update
sudo apt-get install libgl1-mesa-dri:i386
sudo apt-get install mesa-vulkan-drivers mesa-vulkan-drivers:i386
echo "DONE"
echo "Installing wine"
wget -O - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-get-key add -
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
sudo apt update
sudo apt install --install-recommends winehq-stable
echo "DONE"
echo "Installing Sublime Text"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt-get install -y sublime-text
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
echo "Installing flowblade"
sudo apt-get install -y flowblade
echo "DONE"
echo "Installing gdebi"
sudo apt-get install -y gdebi-core
echo "DONE"
echo "Installing Spotify"
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client
echo "DONE"

mkdir deb_packs
cd deb_packs
wget "https://atom.io/download/deb" "https://steamcdn-a.akamaihd.net/client/installer/steam.deb" "https://discord.com/api/download?platform=linux&format=deb" "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
echo "Installing the following deb packages:"
ls
echo "yyyy" | sudo gdebi *.deb
echo "DONE"

chmod 744 setup_intel-3165.sh
echo "*******************************************************"
echo "if necessary run setup_intel-3165.sh"

sudo apt update && sudo apt full-upgrade
sudo apt autoremove -y


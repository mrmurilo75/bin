#!/bin/bash

#chmod 744 $0

touch setup_stdin.txt
echo "Installing build-essential"
sudo apt install -y build-essential > setup_stdin.txt
echo "DONE"
echo "Installing gcc-multilib" 
sudo apt install -y gcc-multilib > setup_stdin.txt
echo "DONE"
echo "Installing util-linux"
sudo apt install -y util-linux > setup_stdin.txt
echo "DONE"
echo "Installing mesa-utils"
sudo apt install -y mesa-utils > setup_stdin.txt
sudo apt install -y libgl1-mesa-dri:i386 > setup_stdin.txt
sudo apt install -y libgl1-mesa-glx:i386 > setup_stdin.txt
sudo apt install -y libgl1-mesa-glx:amd64 > setup_stdin.txt
echo "DONE"
echo "Installing gparted"
sudo apt install -y gparted > setup_stdin.txt
echo "DONE"
echo "Installing git"
sudo apt install -y git > setup_stdin.txt
echo "DONE"
echo "Installing neovim"
sudo apt install -y neovim > setup_stdin.txt
echo "DONE"
echo "Installing default-JDK"
sudo apt install -y default-jdk > setup_stdin.txt
echo "DONE"
echo "Installing nodejs"
sudo apt install -y nodejs > setup_stdin.txt
echo "DONE"
echo "Installing npm"
sudo apt install -y npm > setup_stdin.txt
echo "DONE"
echo "Installing snapd"
sudo apt install -y snapd > setup_stdin.txt
echo "DONE"
echo "Installing mesa-vulkan-drivers"
sudo dpkg --add-architecture i386 > setup_stdin.txt
sudo apt update > setup_stdin.txt
sudo apt install libgl1-mesa-dri:i386 > setup_stdin.txt
sudo apt install mesa-vulkan-drivers mesa-vulkan-drivers:i386 > setup_stdin.txt
echo "DONE"
echo "Installing wine"
wget -O - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add - > setup_stdin.txt
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main' > setup_stdin.txt
sudo apt update > setup_stdin.txt
sudo apt install --install-recommends winehq-stable > setup_stdin.txt
echo "DONE"
echo "Installing Sblime Text"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - > setup_stdin.txt
sudo apt-get install apt-transport-https > setup_stdin.txt
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list > setup_stdin.txt
sudo apt-get update > setup_stdin.txt
sudo apt-get install -y sublime-text > setup_stdin.txt
echo "DONE"
echo "Installing Brave Browser"
sudo apt install apt-transport-https curl > setup_stdin.txt
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add - > setup_stdin.txt
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list > setup_stdin.txt
sudo apt update > setup_stdin.txt
sudo apt install -y brave-browser > setup_stdin.txt
echo "DONE"
echo "Installing Lutris"
sudo add-apt-repository ppa:lutris-team/lutris > setup_stdin.txt
sudo apt-get update -y > setup_stdin.txt
sudo apt-get install -y lutris > setup_stdin.txt
echo "DONE"
echo "Installing vlc"
echo "
" | snap install -y vlc > setup_stdin.txt
echo "DONE"
echo "Installing vokoscreen"
sudo apt install -y vokoscreen > setup_stdin.txt
echo "DONE"

mkdir deb_packs
cd deb_packs
wget -qO "https://atom.io/download/deb" "https://steamcdn-a.akamaihd.net/client/installer/steam.deb" "https://discord.com/api/download?platform=linux&format=deb"
echo "Installed the following deb packages:"
ls

chmod 744 setup_intel-3165.sh > setup_stdin.txt
echo "*******************************************************"
echo "if necessary run setup_intel-3165.sh"

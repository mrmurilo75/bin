#!/bin/bash 

echo -e "\n\tInstalling vlc"
sudo apt-get install -y vlc
echo -e "\tDONE"
echo -e "\n\tInstalling simplescreenrecrder"
sudo apt-get install -y simplescreenrecorder
echo -e "\tDONE"
echo -e "\n\tInstalling gdebi"
sudo apt-get install -y gdebi-core
echo -e "\tDONE"

mkdir $HOME/.deb_packs && cd $HOME/.deb_packs
wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
echo -e "\n\tInstalling google-chrome-stable_current_amd64.deb:"
ls
echo "yy" | sudo gdebi google-chrome-stable_current_amd64.deb
rm -r $HOME/.deb_packs
echo -e "\tDONE"

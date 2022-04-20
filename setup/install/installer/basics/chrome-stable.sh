#!/bin/bash

./config/installer-config.sh

cd $HOME/Programs/deb_packs && wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
echo "y" | sudo gdebi google-chrome-stable_current_amd64.deb 


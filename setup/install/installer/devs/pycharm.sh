#!/bin/bash

./config/installer-config.sh

cd $HOME/deb_packs && wget "https://github.com/xournalpp/xournalpp/releases/download/v1.1.1/xournalpp-1.1.1-Debian-bullseye-x86_64.deb"
echo "y" | sudo gdebi google-chrome-stable_current_amd64.deb 


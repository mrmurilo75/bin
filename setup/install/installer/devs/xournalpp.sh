#!/bin/bash

./config/installer-config.sh

cd $HOME/Programs/deb-packs && wget 'https://github.com/xournalpp/xournalpp/releases/download/v1.1.1/xournalpp-1.1.1-Debian-bullseye-x86_64.deb'
echo "y" | sudo gdebi xournalpp-1.1.1-Debian-bullseye-x86_64.deb


#!/bin/bash

#chmod 744 $0

echo -e "\n\tRunning apt-essentials.sh ..."
./apt-essentials.sh
echo -e "(apt-essentials.sh)\tDone"
echo -e "\n\tRunning apt-basics.sh ..."
./apt-basics.sh
echo -e "(apt-basics.sh)\tDone"
echo -e "\n\tRunning apt-extras.sh ..."
./apt-extras.sh
echo -e "(apt-extras.sh)\tDone"
echo -e "\n\tRunning install-chrome.sh ..."
./install-chrome.sh
echo -e "(install-chrome.sh)\tDone"
echo -e "\n\tRunning install-discord.sh ..."
./install-discord.sh
echo -e "(install-discord.sh)\tDone"
echo -e "\n\tRunning install-py3.sh ..."
./install-py3.sh
echo -e "(install-py3.sh)\tDone"
echo -e "\n\tRunning install-spotify.sh ..."
./install-spotify.sh
echo -e "(install-spotify.sh)\tDone"
echo -e "\n\tRunning set-bashrc.sh ..."
./set-bashrc.sh
echo -e "(set-bashrc.sh)\tDone"
echo -e "\n\tRunning set-autostart.sh ..."
./set-autostart.sh
echo -e "(set-autostart.sh)\tDone"

echo -e "\n\tRemoving libreoffice ..."
sudo apt remove -y libreoffice-*

echo -e "\n\tRunning apt-clean-upgrade.sh ..."
./apt-clean-upgrade.sh
echo -e "(apt-clean-upgrade.sh)\tDone"

./setup-github.sh

brave-browser https://slack.com/intl/en-pt/downloads/linux 


#!/bin/bash

#chmod 744 $0

echo -e "\n\tRemoving libreoffice ..."
sudo apt remove -y libreoffice-*

echo -e "\n\tRunning apt-clean-upgrade.sh ..."
./apt-clean-upgrade.sh
echo -e "(apt-clean-upgrade.sh)\tDone"

./setup-github.sh

brave-browser https://slack.com/intl/en-pt/downloads/linux 


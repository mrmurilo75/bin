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
echo -e "\n\tRunning install-dev-basics.sh ..."
./install-dev-basics.sh
echo -e "(install-dev-basics.sh)\tDone"
echo -e "\n\tRunning set-bashrc.sh ..."
./set-bashrc.sh
echo -e "(set-bashrc.sh)\tDone"

echo -e "\n\tRemoving libreoffice ..."
sudo apt remove -y libreoffice-*

echo -e "\n\tRunning apt-clean-upgrade.sh ..."
./apt-clean-upgrade.sh
echo -e "(apt-clean-upgrade.sh)\tDone"

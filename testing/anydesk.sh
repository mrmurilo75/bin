#!/bin/bash

# install requirements missing (at least in Pop!OS)
sudo apt install libpangox-1.0-0

echo 'wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list 
apt update
apt install anydesk
' | sudo su


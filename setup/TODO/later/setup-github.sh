#!/bin/bash

if ls ~/.ssh/id_rsa; 
then
	:
else
	echo -e "\n\tCreate ssh key"
	echo -e '\n\n\n\n\n' | ssh-keygen -t rsa -b 4096
	xclip -sel clipboard ~/.ssh/id_rsa.pub
	echo -e "\tDONE"
fi

brave-browser 'https://github.com'


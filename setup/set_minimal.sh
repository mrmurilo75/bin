#!/bin/bash


echo -e "\nWould you like to set essentials now (this may take a while)? [y/N]  "

read input

if [[ $input =~ ('y'|'Y'|'yes'|'Yes'|'YES') ]]; then
	./set_essentials.sh
else
	echo -e '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n\nEssentials from apt have NOT been installed!\nPlease run:\n\t setup/set_essentials.sh\nat a convenient moment\n\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n\n'
fi

cd install 
 for i in $(ls *minimal.sh)
do
    ./$i
done


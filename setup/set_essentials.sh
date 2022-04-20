#!/bin/bash

cd install 
 for i in $(ls *essentials.sh)
do
    ./$i
done

if [ $SET_ESSENTIALS_LAST ]
then
	:
else
	cd install && ./finalize.sh
fi


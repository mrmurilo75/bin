#!/bin/bash

SET_BASICS_LAST=0

./set_basics.sh

cd install 
 for i in $(ls *devs.sh)
do
    ./$i
done


if [ $SET_DEVS_LAST ]
then
	:
else
	cd install && ./finalize.sh
fi


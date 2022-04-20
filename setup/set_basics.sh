#!/bin/bash

SET_MINIMAL_LAST=0

echo "Y" | ./set_minimal.sh

cd install 
 for i in $(ls *basics.sh)
do
    ./$i
done


if [ $SET_BASICS_LAST ]
then
	:
else
	cd install && ./finalize.sh
fi


#!/bin/bash

SET_DEVS_LAST=0

./set_devs.sh

cd install 

for i in $(ls *extras.sh); do
    ./$i
done


if [ $SET_EXTRAS_LAST ]; then
	:
else
	./finalize.sh
fi


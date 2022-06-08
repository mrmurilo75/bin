#!/bin/bash

cd install 

for i in $(ls *essentials.sh); do
    ./$i
done

if [ $SET_ESSENTIALS_LAST ]; then
	:
else
	./finalize.sh
fi


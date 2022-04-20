#!/bin/bash

./set_devs.sh

cd install 
 for i in $(ls *extras.sh)
do
    ./$i
done


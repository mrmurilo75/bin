#!/bin/bash

./set_basics.sh

cd install 
 for i in $(ls *devs.sh)
do
    ./$i
done


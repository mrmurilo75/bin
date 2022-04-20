#!/bin/bash

echo "Y" | ./set_minimal.sh

cd install 
 for i in $(ls *basics.sh)
do
    ./$i
done


#!/bin/bash

cd install 
 for i in $(ls *essentials.sh)
do
    ./$i
done


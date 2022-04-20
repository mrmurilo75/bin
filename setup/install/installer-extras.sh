#!/bin/bash

./config/installer-config.sh

for i in installer/extras/*
do
    ./$i
done

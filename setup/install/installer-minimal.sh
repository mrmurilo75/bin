#!/bin/bash

./config/installer-config.sh

for i in installer/minimal/*
do
    ./$i
done

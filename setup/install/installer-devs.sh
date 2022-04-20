#!/bin/bash

./config/installer-config.sh

for i in installer/devs/*
do
    ./$i
done

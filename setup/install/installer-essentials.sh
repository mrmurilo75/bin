#!/bin/bash

./config/installer-config.sh

for i in installer/essentials/*
do
    ./$i
done

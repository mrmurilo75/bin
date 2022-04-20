#!/bin/bash

./config/installer-config.sh

for i in installer/basics/*
do
    ./$i
done

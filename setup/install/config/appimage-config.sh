#!/bin/bash

if ls $HOME | grep Programs
then
	:
else
	mkdir $HOME/Programs
fi


#!/bin/bash

if ls $HOME | grep Programs
then
	:
else
	mkdir $HOME/Programs
fi

if ls $HOME/Programs | grep VidCutter-6.0.0-x64.AppImage
then
	:
else
	cd $HOME/Programs && wget 'https://github.com/ozmartian/vidcutter/releases/download/6.0.0/VidCutter-6.0.0-x64.AppImage'
	chmod 744 VidCutter-6.0.0-x64.AppImage
fi


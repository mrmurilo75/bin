#!/bin/bash

./config/appimage-config.sh

if ls $HOME/Programs | grep deb-packs
then
	:
else
	mkdir $HOME/Programs/deb-packs
fi


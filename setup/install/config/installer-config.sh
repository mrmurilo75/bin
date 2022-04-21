#!/bin/bash

./config/appimage-config.sh

if ls $HOME/Programs | grep deb_packs
then
	:
else
	mkdir $HOME/Programs/deb_packs
fi


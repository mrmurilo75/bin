#!/bin/bash

./config/appimage-config.sh

URLS='
https://github.com/ozmartian/vidcutter/releases/download/6.0.0/VidCutter-6.0.0-x64.AppImage
'
APPS='
VidCutter-6.0.0-x64.AppImage
'

for URL in $URLS
do
    cd $HOME/Programs && wget -N $URL
done

for APP in $APPS 
do
    chmod +x $APP
done


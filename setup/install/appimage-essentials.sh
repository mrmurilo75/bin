#!/bin/bash

./config/appimage-config.sh

URLS='
'
APPS='
'

for URL in $URLS
do
    cd $HOME/Programs && wget -N $URL
done

for APP in $APPS 
do
    chmod +x $APP
done


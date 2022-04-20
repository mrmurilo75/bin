#!/bin/bash

./config/appimage-config.sh

URLS='
https://github.com/xournalpp/xournalpp/releases/download/v1.1.1/xournalpp-1.1.1-x86_64.AppImage
'
APPS='
xournalpp-1.1.1-x86_64.AppImage
'

for URL in $URLS
do
    cd $HOME/Programs && wget -N $URL
done

for APP in $APPS 
do
    chmod +x $APP
done


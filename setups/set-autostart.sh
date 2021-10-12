#!/bin/bash

mkdir -p ~/.config/autostart/

AUTO=~/.config/autostart/
APPS=/usr/share/applications/

cp $APPS/brave-browser.desktop $AUTO
cp $APPS/google-chrome.desktop $AUTO
cp $APPS/org.gnome.Terminal.desktop $AUTO
cp $APPS/spotify.desktop $AUTO
cp $APPS/discord.desktop $AUTO


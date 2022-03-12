#!/bin/bash

echo -e "\n\tOn .bashrc :\n\t\tAdd ~/bin to PATH variable\n"
echo -e "\nPATH=$PATH:$HOME/bin \nexport PATH\n" | cat >> $HOME/.bashrc

echo -e "\nXKBOPTIONS=\"caps:swapescape\"\n" | cat >> /etc/default/keyboard


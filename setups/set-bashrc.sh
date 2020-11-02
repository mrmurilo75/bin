#!/bin/bash

echo -e "\n\tOn .bashrc :\n\t\tAdd ~/bin to PATH variable\n"
echo -e "\nPATH=$PATH:$HOME/bin \nexport PATH\n" | cat >> $HOME/.bashrc
echo -e "\n\t\tChange CapsLock to ESC\n"
echo -e "\nsetxkbmap -option caps:swapescape\n" | cat >> $HOME/.bashrc
echo -e "\tDone"

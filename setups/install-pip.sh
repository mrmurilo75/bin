#!/bin/bash

sudo apt update
sudo apt install python3 python3-venv python3-pip

echo -e "\nPATH=$PATH:~/.local/bin\nexport PATH\n" | cat >> ~/.bashrc

#!/bin/bash

sudo apt update
sudo apt install python3 python3-venv python3-pip

echo -e "export PATH=$PATH:~/.local/bin\n" | cat >> ~/.bashrc

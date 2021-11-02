#!/bin/bash

echo -e "\nalias git-status=\"git fetch;git status;echo;git log -1\" start_pdf=\"cd ~/Desktop/PDFSignature; source bin/activate; cd assinatura-digital-pdf/assinatura_digital_pdf/; git-status\" start_cp=\"cd ~/Desktop/git/competitive_programming_2122/; git-status\"\n" | cat >> ~/.bashrc


#!/bin/bash

cd $HOME
git clone https://github.com/foxlet/macOS-Simple-KVM.git
cd macOS-Simple-KVM
sudo apt-get install qemu-system qemu-utils python3 python3-pip
./jumpstart.sh
confirm=0
while [ $confirm ]
do
	echo -n "Please write disk size in Gb: (number only)  "
	read 1
	echo -n "Confirm $1 Gb?(y/n) "
	read confirm
	if [ ($confirm != "y") && ($confirm != "Y") ];then
		confirm=0
	fi
done

qemu-img create -f qcow2 MyDisk.qcow2 $1G

echo "    -drive id=SystemDisk,if=none,file=MyDisk.qcow2 \\
    -device ide-hd,bus=sata.4,drive=SystemDisk \\
" | cat >> basic.sh
if [ cat $HOME/.bashrc | grep "alias macOS=\"cd $HOME/macOS-Simple-KVM && sudo ./basic.sh \"" ];then
	:
else
	echo "alias macOS=\"cd $HOME/macOS-Simple-KVM && sudo ./basic.sh \"" | cat >> $HOME/.bashrc
	alias macOS="cd $HOME/macOS-Simple-KVM && sudo ./basic.sh "
fi

echo -n "Done\nFor more information on setup see: $HOME/macOS-Simple-KVM/docs\n\n"

macOS

#!/bin/bash

BOOL=ls | grep *tgz | wc
if [[ ! $BOOL  ]]
then
	wget 'https://wireless.wiki.kernel.org/_media/en/users/drivers/iwlwifi-7265-ucode-25.30.14.0.tgz'
fi
tar zxvf iwlwifi-7265-ucode-25.30.14.0.tgz
sudo cp iwlwifi-7265-ucode-25.30.14.0/*.ucode /lib/firmware/
cd /lib/firmware
sudo cp iwlwifi-7265D-13.ucode  iwlwifi-3165-9.ucode
sudo cp iwlwifi-7265-13.ucode  iwlwifi-3165-13.ucode
sudo cp iwlwifi-7265D-14.ucode  iwlwifi-3165-10.ucode
sudo cp iwlwifi-7265-14.ucode  iwlwifi-3165-14.ucode


#!/bin/bash

sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt update
sudo apt install -y ethereum

if cd $HOME && ls | grep -c packs > /dev/null
then
	cd $HOME/packs
else
	mkdir $HOME/packs && cd $HOME/packs
fi

wget "https://github.com/ethereum-mining/ethminer/releases/download/v0.18.0/ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz"
mkdir ./ethminer-0.18.0-cuda-9-linux-x86_64
tar -C ./ethminer-0.18.0-cuda-9-linux-x86_64 -zxvf ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz
wget "https://github.com/ethereum/mist/releases/download/v0.11.1/Ethereum-Wallet-linux64-0-11-1.deb"
sudo gdebi -n Ethereum-Wallet-linux64-0-11-1.deb

if cat $HOME/.bashrc | grep -c -F "alias start-ethminer" > /dev/null
then
	:
else
	echo -e "\nalias start-ethminer=\"cd $HOME/packs/ethminer-0.18.0-cuda-9-linux-x86_64/bin && ./ethminer -U -P stratum1+tcp://0xBf4b91fAcFaD9C61257D1D410C5A873dADB9f77e.Worker:@eu1.ethpool.org:3333\" \n" | cat >> $HOME/.bashrc 
fi

if cat $HOME/.bashrc | grep -c -F "alias start-geth" > /dev/null
then
	:
else
        echo -e "\nalias start-geth=\"geth --etherbase \"0xBf4b91fAcFaD9C61257D1D410C5A873dADB9f77e\" --mine --minerthreads=16\"\n" | cat >> $HOME/.bashrc
fi

if cat $HOME/.bashrc | grep -c -F "alias soft-geth" > /dev/null
then
	:
else
        echo -e "\nalias soft-geth=\"geth --etherbase \"0xBf4b91fAcFaD9C61257D1D410C5A873dADB9f77e\" --mine --minerthreads=8\"\n" | cat >> $HOME/.bashrc
fi

if cat $HOME/.bashrc | grep -c -F "alias start-ethwallet" > /dev/null
then
	:
else
        echo -e "\nalias start-ethwallet=\"geth --http --http.corsdomain https://wallet.ethereum.org\"\n" | cat >> $HOME/.bashrc
fi

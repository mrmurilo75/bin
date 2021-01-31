mkdir $HOME/.deb_packs
cd $HOME/.deb_packs
wget "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
echo -e "\n\tInstalling vscode-stable.deb:"
echo "yy" | sudo gdebi 'download?build=stable&os=linux-deb-x64'
rm $HOME/.deb_packs/'download?build=stable&os=linux-deb-x64'
rmdir $HOME/.deb_packs
echo -e "\tDONE"

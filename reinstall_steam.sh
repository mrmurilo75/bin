sudo apt purge steam
sudo rm -rf ~/.steam
sudo rm -rf ~/.local/share/Steam

sudo apt autoremove
sudo apt autoclean

sudo apt update && sudo apt full-upgrade

sudo apt install steam

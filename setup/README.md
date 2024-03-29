# This is a bundle of setup scripts

The main idea is to facilitate setting up in a debian-based enviroment (my testing setup is of Pop!OS)

## Running

The setups scrips are here on the home along with some utility-scripts.

There are three incremental setup levels for different enviroments/machines:
 - [X] essentials - basically updating linux build
 - [X] minimal    - browser and other cli necessities (running essentials is optional)
 - [X] basic      - multi-browser and more utilities
 - [X] devs       - most things needed for a working development/study environment
 - [X] extras     - other things that may come in hand

To start simply run the script wanted from the setup/ folder
```$ ./set_[setup level].sh```


## Installed Programs

> ##### apt
> Install using a apt-get

> ##### installers
> Installed through a installer script as from download pages or .deb packs (latter are kept in ~/Programs/deb-packs)

> ##### AppImages
> Download into ~/Programs (ready to run)

> ##### Configuration step
> Auto configure settings where possible, and redirect where necessary


 1. ### Essentials
    - #### &check; apt
      - linux-kernel (and update-initramfs)
      - build-essential
      - gcc-multilib
      - util-linux

 2. ### Minimal
    - > Essentials **(optional)**
    - #### &check; apt
      - neovim
      - git
      - lm-sensors
      - psensor
    - #### &check; Installer
      - brave-browser

 3. ### Basics
    - > Essentials
    - > Minimal
    - #### &check; apt
      - apt-transport-https
      - ca-certificates
      - curl
      - gnupg
      - lsb-release
      - gparted
      - xclip
      - vlc
      - gdebi-core
    - #### &check; Installer
      - chrome-stable
      - discord

 4. ### Devs
    - > Essentials
    - > Minimal 
    - > Basics
    - #### &check; apt
      - postgresql
      - mysql-server
      - docker ( ., .-engine, ..io )
      - containerd
      - runc
      - nodejs
      - npm 
      - python3 ( ., .-dev, .-pip, .-venv )
      - tree
      - inkscape
      - gnome-boxes
    - #### &check; appimage
      - xournal++ (v1.1.1)
    - #### &check; Installer
      - xournal++ (v1.1.1 deb)
      - PyCharm (on tar.gz)

 5. ### Extras
    - >  Essentials
    - >  Minimal 
    - >  Basics
    - >  Devs
    - #### &check; apt
      - transmission
      - simplescreenrecorder
      - steam
    - #### &check; appimage
      - VidCutter (v6.0.0)
    - #### &check; Installer
      - balena-ecther
      - brave-browser-beta
      - spotify (2022)


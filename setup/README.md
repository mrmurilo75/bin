# This is a bundle of setup scripts

The main idea is to facilitate setting up in a debian-based enviroment (my testing setup is of Pop!OS)

## Running

The setups scrips are here on the home along with some utility-scripts.

There are three incremental setup levels for different enviroments/machines:
 - [X] essencials - basically updating linux build
 - [X] minimal    - browser and other cli necessities (running essencials is optional)
 - [ ] basic      - multi-browser and more utilities
 - [ ] devs       - most things needed for a working development/study environment
 - [ ] extras     - other things that may come in hand

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


 1. ### Essencials
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
    - #### &check; Installer
      - PyCharm [redirect]
      - CLion   [redirect]
      - slack   [redirect]

 5. ### Extras
    - >  Essentials
    - >  Minimal 
    - >  Basics
    - >  Devs
    - #### &check; apt
      - transmission
      - simplescreenrecorder
      - steam
    - #### &check; Installer
      - balena-ecther
      - brave-browser-beta
      - spotify


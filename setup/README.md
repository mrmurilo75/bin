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

 3. ### Basics
    - > Essentials
    - > Minimal
    - #### &check; apt
      - gparted
      - xclip
      - vlc
      - gdebi-core

 4. ### Devs
    - > Essentials
    - > Minimal 
    - > Basics
    - #### &check; apt
      - nodejs
      - npm 
      - python3
      - tree
      - inkscape

 5. ### Extras
    - >  Essentials
    - >  Minimal 
    - >  Basics
    - >  Devs
    - #### &check; apt
      - transmission
      - simplescreenrecorder
      - gnome-boxes


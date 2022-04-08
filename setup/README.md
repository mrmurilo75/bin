# This is a bundle of setup scripts

- the main idea is to facilitate setting up in a debian-based enviroment (my testing setup is of Pop!OS)

#### Running

The setups scrips are here on the home along with some utility-scripts.

There are three incremental setup levels for different enviroments/machines:
 * essencials - basically updating linux build
 * minimal    - browser and other cli necessities (running essencials is optional)
 * basic      - multi-browser and more utilities
 * devs       - most things needed for a working development/study environment
 * extras     - other things that may come in hand

To start simply run the script wanted from the setup/ folder
```$ ./set-[setup level].sh```

#

#### Installed Programs

###### apt
> Install using a apt-get
 1. Essencials
    [X] linux-kernel (and update-initramfs)
    [X] build-essential
    [X] gcc-multilib
    [X] util-linux

 2. Minimal
    [X] > Essentials (optional)
    [X] neovim
    [X] git
    [X] lm-sensors
    [X] psensor

 3. Basics
    [X] > Essentials
    [X] > Minimal
    [X] gparted
    [X] xclip
    [X] vlc
    [X] gdebi-core

 4. Devs
    [X] > Essentials
    [X] > Minimal 
    [X] > Basics
    [X] nodejs
    [X] npm 
    [X] python3
    [X] tree
    [X] inkscape

 5. Extras
    [X] > Essentials
    [X] > Minimal 
    [X] > Basics
    [X] transmission
    [X] simplescreenrecorder
    [X] gnome-boxes


###### installers
> Installed through a installer script as from download pages or .deb packs (latter are kept in ~/Programs/deb-packs)
 * 

###### AppImages
> Download into ~/Programs (ready to run)
 * 


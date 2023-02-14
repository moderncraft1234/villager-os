## custom config for arch + window manager and display manager

- [X] gets up to date packages
- [X] automatically sets wallpaper for i3 also walpapers are fully customizable
- [X] only available on arch
- [x] soon available on debian basd distributions
- [X] installs nerdfonts for you
- [X] installs custom grub theme for you
- Still to be added
 - [ ] option menu for installer within the script maybe on a second branch
 - [ ] options to choose from window managers
 - [ ] options to choose what bootloader configuration you want

## general overview

 this is a custom desktop envirement that i wrote for arch linux to improve ur workflow.
 its based uppon a tiling window manager called i3 from wich i modified grub to a more eye pleasant theme and i modified the shell and made it to be fish shell for more user friendlyness.
 
 the default terminal window is ofc konsole
 it comes with kde plasma and all of its tooling 
 
 this project took over the span of a few months, mainly bc i was trying to improve the script and its effectiveness and i made it so more people can have a pre configured tiling window manager
 since for begining people this could be a hassle to get the right things and the right stuff installed
 for certain functionality i do encourage people to take a look at the script itself and modify it however they can so they can learn from it and ofc this script installs a modified version of emacs for you called spacemacs it install vim for you and regenerates ur initframs..
 Thank u for reading this and hopefully u will soon start making ur linux user experience more pleasant with this script :D..

# how to install

- step 1 get ur arch linux iso copy
- step 2 boot into the iso from a bootable usb
- step 3 do pacman -Syy to sync packages
- step 4 do pacman -Sy archinstall
- step 5 follow the prompt make sure to have networkmanager as ur required packages
- step 6 get out of chroot
- step 7 boot into the main os
- step 8 enable networkmanager in ur systemd : systemctl start NetworkManager & systemctl enable NetworkManager.
- step 9 install the configs and villager-os login as ur user acount and install git
- step 10 sudo pacman -Sy git
- step 11 git clone https://github.com/moderncraft1234/villager-os
- step 12 cd villager-os
- step 13 chmod +x install.sh
- step 14 ./install.sh (the installment of the configs and desktop envirement)
- step 15 select i3 as desktop envirement check if everything is properly working
________________________________________________________________________________

| 1 | 2   | 3   | 4   | 5   |
|---|-----|-----|-----|-----|
| A | [X] | [X] | [X] | [X] |
| B | [X] | [x] | [X] | [X] |
| C | [X] | [X] | [X] | [X] |
| D | [X] | [X] | [X] | [X] |
| E | [X] | [X] | [X] | [X] |


# for any questions consult me on discord

- villager number 96#6073

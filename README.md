# villager-os
## custom config for arch + window manager and display manager

- [X] gets up to date packages
- [X] automatically sets wallpaper for i3 also walpapers are fully customizable
- [X] only available on arch
- [x] soon available on debian basd distributions
- [X] installs nerdfonts for you
- Still to be added
 - [ ] option menu for installer within the script maybe on a second branch
 - [ ] options to choose from window managers
 - [ ] options to choose what bootloader configuration you want

# how to install

- step 1 get ur arch linux iso copy 
- step 2 boot into the iso from a bootable usb
- step 3 do pacman -Syy to sync packages
- step 4 do pacman -Sy archinstall
- step 5 follow the prompt make sure to have networkmanager as ur required packages
- step 6 add the drives and load the grub bootloader into the chroot after mount
- step 7 get out of chroot
- step 8 boot into the main os
- step 9 enable networkmanager in ur systemd : systemctl start NetworkManager & systemctl enable NetworkManager.
- step 10 install the configs and villager-os login as ur user acount and install git
- step 11 pacman -Sy git
- step 12 git clone https://github.com/moderncraft1234/villager-os
- step 13 cd villager-os
- step 14 chmod +x install.sh
- step 15 ./install.sh (the installment of the configs and desktop enviremont)

________________________________________________________________________________



# for any questions consult me on discord

- villager number 96#6073

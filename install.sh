#!/bin/bash
sudo pacman -Syyu
sudo pacman -Syy i3 -y
sudo pacman -Syy gdm -y
sudo pacman -Syy dmenu -y
sudo pacman -Syy ranger -y
sudo pacman -Syy zsh -y
sudo pacman -Syy networkmanager -y
sudo pacman -Syy emacs -y
sudo pacman -Syy nvim -y
sudo pacman -Syy mc -y
sudo pacman -Syy vim -y
sudo pacman -Syy nvim -y
sudo pacman -Syy gim -y
sudo pacman -Syy polybar -y
sudo pacman -Syy plasma -y
sudo pacman -Syy chromium -y
sudo pacman -Syy konsole -y
pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

cd ~



git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
sudo git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
yay -Syy feh
mkdir ~/Pictures/random

git clone https://github.com/moderncraft1234/villager-os/blob/main/profile ~.profile

cd ~/Pictures

git clone https://github.com/moderncraft1234/villager-os/tree/main/random

sudo systemctl enable gdm
sudo systemctl start gdm
nohup polybar &




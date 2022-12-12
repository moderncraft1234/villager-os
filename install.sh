#!/bin/bash
sudo pacman -Syyu
sudo pacman -Syy i3
sudo pacman -Syy gdm
sudo pacman -Syy dmenu
sudo pacman -Syy ranger
sudo pacman -Syy zsh
sudo pacman -Syy networkmanager
sudo pacman -Syy emacs
sudo pacman -Syy nvim
sudo pacman -Syy mc
sudo pacman -Syy vim
sudo pacman -Syy nvim
sudo pacman -Syy gim
sudo pacman -Syy polybar
pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

cd ~

yay -Syyu
yay -Syy chrome
yay -Syy vagrant
pacman -Syy plasma
yay
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




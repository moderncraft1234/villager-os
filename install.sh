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

pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

cd ~

yay -Syyu
yay -Syy chrome
yay -Syy vagrant
pacman -Syy plasma
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
sudo git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
yay -Syy feh




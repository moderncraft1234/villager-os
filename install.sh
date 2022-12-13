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
sudo pacman -Syy nano
sudo pacman -Syy dolphin
sudo pacman -Syy gimp
sudo pacman -Syy blender
sudo pacman -Syy openssh
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd ~


git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
sudo git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
yay -Syy feh
mkdir ~/Pictures/random

git clone https://github.com/moderncraft1234/villager-os/blob/main/profile ~.profile

cp profile ~/.profile

git clone https://github.com/moderncraft1234/villager-os/tree/main/random

cp /random ~/Pictures/random

yay -S --noconfirm zsh-theme-powerlevel10k-git
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

cp zshrc ~/.zshrc

sudo systemctl enable gdm
sudo systemctl start gdm
nohup polybar &




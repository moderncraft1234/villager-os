#!/bin/bash
sudo pacman -Syyu
sudo pacman -Syy --asdeps i3
sudo pacman -Syy --asdeps gdm
sudo pacman -Syy --asdeps dmenu
sudo pacman -Syy --asdeps ranger
sudo pacman -Syy --asdeps zsh
sudo pacman -Syy --asdeps networkmanager
sudo pacman -Syy --asdeps emacs
sudo pacman -Syy --asdeps nvim
sudo pacman -Syy --asdeps mc
sudo pacman -Syy --asdeps vim
sudo pacman -Syy --asdeps nvim
sudo pacman -Syy --asdeps gimp
sudo pacman -Syy --asdeps polybar
sudo pacman -Syy --asdeps nano
sudo pacman -Syy --asdeps dolphin
sudo pacman -Syy --asdeps gimp
sudo pacman -Syy --asdeps blender
sudo pacman -Syy --asdeps openssh
sudo pacman -Syy --asdeps discord
sudo pacman -Syy --asdeps konsole
sudo pacman -Syy --asdeps plasma
sudo pacman -Syy --asdeps virtualbox
sudo pacman -Syy --asdeps kdenlive
sudo pacman -Syy --asdeps tin2
sudo pacman -S --needed --asdeps git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd ..


git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
sudo git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
yay -Syy feh
mkdir ~/Pictures/random

git clone https://github.com/moderncraft1234/villager-os/blob/main/profile ~/.profile

cp profile ~/.profile

git clone https://github.com/moderncraft1234/villager-os/tree/main/random

cp random ~Pictures/random

yay -Sy google-chrome

yay -Sy wine

yay -Sy lutris

yay -S --noconfirm zsh-theme-powerlevel10k-git
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
 
cp zshrc ~/.zshrc

cp p10k.zsh ~/.p10k.zsh

sudo cp hosts /etc/hosts

sudo systemctl enable gdm
sudo systemctl start gdm
nohup exec polybar &
nohup tin2 &



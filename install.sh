#!/bin/bash
# start of script installing standard packages from ark
sudo pacman -Syyu --noconfirm
sudo pacman -S pulseaudio --noconfirm
sudo pacman -S pulsemixer --noconfirm
sudo pacman -S  i3 --noconfirm
sudo pacman -S  gdm --noconfirm
sudo pacman -S  dmenu --noconfirm
sudo pacman -S  ranger --noconfirm
sudo pacman -S  zsh --noconfirm
sudo pacman -S fish --noconfirm
sudo pacman -S  networkmanager --noconfirm
sudo pacman -S networkmanager-applet --noconfirm
sudo pacman -S  emacs --noconfirm
sudo pacman -S  nvim --noconfirm
sudo pacman -S  mc --noconfirm
sudo pacman -S  vim --noconfirm
sudo pacman -S  nvim --noconfirm
sudo pacman -S  gimp --noconfirm
sudo pacman -S  polybar --noconfirm
sudo pacman -S  nano --noconfirm
sudo pacman -S  dolphin --noconfirm
sudo pacman -S  gimp --noconfirm
sudo pacman -S  openssh --noconfirm
sudo pacman -S  discord --noconfirm
sudo pacman -S  konsole --noconfirm
sudo pacman -S  plasma --noconfirm
sudo pacman -S  virtualbox --noconfirm
sudo pacman -S  kdenlive --noconfirm
sudo pacman -S  tint2 --noconfirm
sudo pacman -S kate --noconfirm
sudo pacman -S neofetch --noconfirm
sudo pacman -S screenfetch --noconfirm
sudo pacman -S --needed --asdeps git base-devel --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd ..


# needed dependicies for boot

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
sudo git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
yay -Syy feh

# getting profile copied and neofetch configuration (most important part of the setup)

cp profile ~/.profile

mkdir $HOME/Pictures

neofetch

sudo neofetch

mkdir $HOME/Pictures/random

cp -r -vvv random/ $HOME/Pictures/

cp neofetch /home/$USER/.config/neofetch/config.conf

sudo cp neofetch /root/.config/neofetch/config.conf

sudo cp os-release /etc/os-release

neofetch

sudo neofetch

# aur packages (optional)

yay -Sy screenfetch --noconfirm

yay -Sy google-chrome --noconfirm

yay -Sy wine --noconfirm

yay -Sy lutris --noconfirm

yay -S --noconfirm zsh-theme-powerlevel10k-git
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

cp zshrc ~/.zshrc

cp p10k.zsh ~/.p10k.zsh

cp tint2rc ~/.config/tint2/tint2rc

sudo cp hosts /etc/hosts

# nerdfonts install

yay -Sy fontconfig --noconfirm
cd ~
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.0-RC/Meslo.zip
mkdir -p .local/share/fonts
unzip Meslo.zip -d .local/share/fonts
cd .local/share/fonts
rm *Windows*
cd $HOME/villager-os
rm Meslo.zip
fc-cache -fv

# needs more options on what shell u can choose users choice

type -a zsh
chsh -s /bin/fish


sudo type -a fish
sudo chsh -s /bin/fish

# nerdfonts instalation intsall end

echo "thank you for taking the time to install villager-os enjoy the configs and theming"

read -p "wanna continue:  " continue

mkdir $HOME/Documents/villager-os

touch $HOME/Documents/villager-os/final.log

echo "$continue" &> $HOME/Documents/villager-os/final.log

# copy the configs and get extra dependicies for final installation

sudo systemctl enable gdm
sudo systemctl start gdm
nohup exec polybar &
nohup tin2 &


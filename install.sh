#!/bin/bash
# start of script installing standard packages from ark
mkdir $HOME/Documents
mkdir $HOME/Documents/villager-os

sudo pacman -Syyu --noconfirm
sudo pacman -S network-manager-applet --noconfirm
sudo pacman -S gtop --noconfirm
sudo pacman -S ark --noconfirm
sudo pacman -S htop --noconfirm
sudo pacman -S gcc --noconfirm
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



# needed dependicies for boot ^^^

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
sudo git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
yay -Syy feh --noconfirm

# getting profile copied and neofetch configuration (most important part of the setup)

cp -vvv profile ~/.profile

mkdir -vvv $HOME/Pictures

neofetch

sudo neofetch

mkdir -vvv $HOME/Pictures/random

cp -r -vvv random/ $HOME/Pictures/

cp neofetch /home/$USER/.config/neofetch/config.conf

sudo cp -vvv neofetch /root/.config/neofetch/config.conf

sudo cp -vvv os-release /etc/os-release

neofetch

sudo neofetch

# Customizing package manager for the abbility to install wine from the official repositories and the config includes some minor theming and a few aditional repositories

sudo rm -vvv /etc/pacman.conf

sudo cp -vvv pacman.conf /etc/pacman.conf

pacman -Sy wine --noconfirm

# aur packages (optional)

# yay -S linux-drm-next-git --noconfirm

# yay -S linux-lts510 --noconfirm

# yay -S linux-git --noconfirm

yay -S btop --noconfirm


yay -S screenfetch --noconfirm --noconfirm

yay -S google-chrome --noconfirm

yay -S zsh-theme-powerlevel10k-git
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

cp zshrc ~/.zshrc

sudo cp zshrc /root/.zshrc

cp p10k.zsh ~/.p10k.zsh

sudo cp p10k.zsh /root/.p10k.zsh

cp tint2rc ~/.config/tint2/tint2rc

# sudo cp hosts /etc/hosts

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


# grub bootloader conf

sudo git clone https://github.com/moderncraft1234/grubTheme /boot/grub/themes

sudo cp -v grub /etc/default/grub

sudo grub-mkconfig -o /boot/grub/grub.cfg

# needs more options on what shell u can choose users choice

type -a fish
chsh -s /bin/fish


sudo type -a fish
sudo chsh -s /bin/fish

# nerdfonts instalation intsall end

echo "thank you for taking the time to install villager-os enjoy the configs and theming. Small notes the backrounds provided for i3 is configured in $HOME/Pictures/random u can add and remove pictures in that folder also the script installed a new bootloader theme u can customize themes in /etc/default/grub under GRUB_THEME"

read -p "wanna continue:  " continue



touch $HOME/Documents/villager-os/final.log

echo "$continue" &> $HOME/Documents/villager-os/final.log

# copy the configs and get extra dependicies for final installation

sudo systemctl enable gdm
sudo systemctl start gdm
nohup exec polybar &
nohup tin2 &


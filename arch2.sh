#!/bin/sh

sudo pacman -Syy && sudo pacman -S archlinuxcn-keyring
sudo pacman -Syu android-studio
yay -S safeeyes doas 

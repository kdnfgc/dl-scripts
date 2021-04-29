#!/bin/sh

#Installs most utils
sudo eopkg it stow zsh dash brave safeeyes redshift kitty adwaita-icon-theme plank vim neovim gimp inkscape qt5ct rustup 

#Removes Firefox
sudo eopkg rm firefox


#Adds my dotfiles
git clone https://github.com/kdnfgc/.dotfiles.git
cd .dotfiles
stow kitty vim nvim p10klx pic plank qt5ct zsh profile

#Adds Nerd Fonts
cd root/root/usr/share/fonts
sudo cp -r truetype /usr/share/fonts
cd

#Adds Vim-Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


#!/bin/sh

#Installs most utils
sudo eopkg in brave safeeyes redshift kitty adwaita-icon-theme plank vim neovim qt5ct dash zsh rustup 

#Adds Vim-Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

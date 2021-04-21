#!/bin/sh

#Installs Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#Adds Vim-Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Installs Most Utils
sudo brew install stow vim neovim cask
sudo brew cask install geany kitty gimp inkscape libreoffice vscodium

#Adds My Dotfiles
git clone https://github.com/kdnfgc/.dotfiles.git
cd .dotfiles
stow geany kitty vim nvim p10kux zsh

#Adds Nerd Fonts
cd root/root/usr/share/fonts/truetype
sudo cp -r robotomono ~/Library/Fonts
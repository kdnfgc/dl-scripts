#!/bin/sh

#Installs Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


#Installs Most Utils
sudo brew install stow vim neovim dash cask
sudo brew cask install brave-browser kitty gimp inkscape libreoffice android-studio discord steam
cd

#Adds My Dotfiles
git clone https://github.com/kdnfgc/.dotfiles.git
cd .dotfiles
stow kitty vim nvim p10kux zsh

#Adds Nerd Fonts
cd root/root/usr/share/fonts/truetype
sudo cp -r robotomono ~/Library/Fonts
cd

#Adds Vim-Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Installs pfetch
git clone https://github.com/dylanaraps/pfetch.git
cd pfetch
make
sudo make install
cd

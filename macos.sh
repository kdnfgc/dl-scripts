#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sudo brew install stow vim neovim cask
sudo brew cask install geany kitty gimp inkscape libreoffice visual-studio-code

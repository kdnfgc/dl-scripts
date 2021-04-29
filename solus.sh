#!/bin/sh

#Installs most utils
sudo eopkg it stow zsh dash make brave safeeyes redshift kitty adwaita-icon-theme plank vim neovim gimp inkscape qt5ct rustup 

#Removes Firefox
sudo eopkg rm firefox
cd

#Removes default profile
rm .profile

#Adds my dotfiles
git clone https://github.com/kdnfgc/.dotfiles.git
cd .dotfiles
stow kitty vim nvim p10kux pic plank qt5ct zsh profile

#Adds Nerd Fonts
cd root/root/usr/share/fonts
sudo cp -r truetype /usr/share/fonts
cd

#Adds Vim-Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Make zsh my default theme
chsh -s /bin/zsh

#Installs pfetch
git clone https://github.com/dylanaraps/pfetch.git
cd pfetch
make
sudo make install
cd

#Adds Gruvbox-Material theme
git clone https://github.com/sainnhe/gruvbox-material-gtk.git
cd gruvbox-material-gtk
sudo cp -r icons/* /usr/share/icons
sudo cp -r themes/* /usr/share/themes
cd
sudo rm -r gruvbox-material-gtk

#Removes breeze icon
sudo eopkg rm breeze-cursor-theme mate-terminal

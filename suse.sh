#!/bin/sh

#Adds Vim-Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Installs most utilities
sudo zypper in stow zsh dash safeeyes redshift redshift-gtk kitty neovim gimp inkscape qt5ct rust gcc make curl hte 

#Adds and installs Brave
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo zypper addrepo https://brave-browser-rpm-release.s3.brave.com/x86_64/ brave-browser
sudo zypper refresh
sudo zypper in brave-browser 

#Adds Icons/Themes
git clone https://github.com/sainnhe/gruvbox-material-gtk.git
#If no .icons folder, add icons folder (pseudocode)
mv ~/gruvbox-material-gtk/icons/* ~/.icons
sudo cp -r ~/.icons/* /usr/share/icons
#If no .themes folder, add themes folder (pseudocode)
mv ~/gruvbox-material-gtk/themes/* ~/.themes
sudo cp -r ~/.themes /usr/share/themes

#Remove leftover files
rm -r gruvbox-material-gtk

#Adds Vim-Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Adds my dotfiles
git clone https://github.com/kdnfgc/.dotfiles.git
cd .dotfiles
stow kitty vim nvim p10klx pic plank qt5ct zsh profile

#Removes unnecessary branding
sudo zypper rm yast2-qt-branding-openSUSE
sudo zypper al yast2-qt-branding-openSUSE

#Adds Nerd Fonts
cd root/root/usr/share/fonts
sudo cp -r truetype /usr/share/fonts


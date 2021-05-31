#!/bin/sh

#Change directory to home
cd

#Installs most utilities
sudo zypper in stow zsh dash safeeyes neovim gimp inkscape rust gcc make curl shotwell evolution evolution-plugin-rss deja-dup gnome-characters gnome-screenshot gnome-session-wayland 

#Adds and installs Brave
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo zypper addrepo https://brave-browser-rpm-release.s3.brave.com/x86_64/ brave-browser
sudo zypper addrepo https://packages.microsoft.com/yumrepos/vscode vscode 
sudo zypper refresh
sudo zypper in brave-browser code

#Removes firefox
sudo zypper rm firefox
cd

#Removes default profile
sudo rm .profile

#Adds my dotfiles
git clone https://github.com/kdnfgc/.dotfiles.git
cd .dotfiles
stow kitty vim nvim p10kux pic zsh profile

#Adds Nerd Fonts
cd root/root/usr/share/fonts
sudo cp -r truetype /usr/share/fonts
cd

#Adds halmak layout
cd .dotfiles/root/root/usr/share/X11/xkb
sudo cp -r rules /usr/share/X11/xkb
sudo cp -r symbols /usr/share/X11/xkb
sudo cp -r types /usr/share/X11/xkb
cd .dotfiles/root/root/etc/X11/xorg.conf.d
sudo cp 00-keyboard.conf /etc/X11/xorg.conf.d
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


#Removes unnecessary branding
sudo zypper rm yast2-qt-branding-openSUSE git-gui
sudo zypper al yast2-qt-branding-openSUSE firefox git-gui


#!/bin/bash

function config_link {
  if [[ ! -e ~/.$1 ]]
  then
    ln -s `pwd`/$1 ~/.$1
  fi
}

config_link gitconfig
config_link gitignore
config_link hgrc

config_link ackrc
config_link dircolors
config_link irbrc
config_link irssi
config_link editrc
config_link musca_start
config_link mutt
config_link muttrc
config_link newsbeuter
config_link pentadactyl
config_link pentadactylrc
config_link slate.js
config_link ssh
config_link tmux.conf
config_link vim
config_link vimrc
config_link wgetrc

config_link zlogin
config_link zshrc

# Move sublimetext/Preferences.sublime-settings to sublime text settings path
rm ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
cp sublimetext/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

if [[ `uname -s` == "Linux" && -e /etc/arch-release ]]
then
	config_link Xdefaults
	config_link xinitrc
fi

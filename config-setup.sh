#!/bin/bash

function config_link {
  if [[ ! -e ~/.$1 ]]
  then
    ln -s `pwd`/$1 ~/.$1
  fi
}

config_link gitconfig
config_link gitignore

config_link irbrc
config_link irssi
config_link editrc
config_link ssh

config_link zlogin
config_link zshrc

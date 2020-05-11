#!/bin/bash

function config_link {
  if [ -e ~/.$1 ] ; then
    echo "~/.$1 file or directory exists"
  else
    ln -s `pwd`/$1 ~/.$1
  fi
}

config_link gitconfig
config_link gitignore

config_link irbrc
config_link ssh

if [[ "$(uname -s)" != 'Darwin' ]] ; then
  config_link bash_aliases
  config_link bash_custom
else # OS X
  config_link zshrc
  config_link zlogin
fi

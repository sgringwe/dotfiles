#!/bin/bash

# Use this setup script on a macbook

mkdir ~/code

# Setup homebrew
brew bundle

# Setup zsh prompt
nvm install 8.0 && nvn use 8 && npm install -g spaceship-prompt

# Copy configs
RCRC=./rcrc rcup

# Grab all the submodules
git submodule update --init

# OSX options setup
./osx-setup.sh

# Change to zsh
# TODO(sgringwe): Append `/usr/local/bin/zsh` to `/etc/shells`, otherwise this might error.
chsh -s $(which zsh)

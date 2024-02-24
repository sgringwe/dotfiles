#!/bin/bash

# Use this setup script on a macbook

mkdir ~/code

# Setup homebrew
brew bundle

# Set up nvm
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Copy configs
RCRC=./rcrc rcup

# Grab all the submodules
git submodule update --init

./config-setup.sh

# OSX options setup
# ./osx-setup.sh

# Change to zsh
# TODO(sgringwe): Append `/usr/local/bin/zsh` to `/etc/shells`, otherwise this might error.
chsh -s $(which zsh)

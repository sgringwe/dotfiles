# Dotfiles

Various configeration files set to my tastes (and some things from others).

If you're on a new machine, run setup.sh and the configs and environment will
be set up according to which system you run (only OSX and Arch Linux are
supported at this time).

## Using

Clone repository into ~/.dotfiles. Location is important - the script depends on it.

Run `./setup.sh`

Add this to bashrc:

`export PATH="$HOME/.dotfiles/bin:$PATH"`
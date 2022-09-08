#!/bin/bash

export HOMEBREW_INSTALL_FROM_API=true

echo "Remember to install WWDC colourscheme - See vim/README.md"

################
## Fish stuff ##
################
cd fish && brew bundle && cd -

ln -s ./fish ~/.config/fish

################
## Tmux stuff ##
################
cd tmux && brew bundle && cd -

ln -s ./tmux/tmux.conf ~/.tmux.conf

###############
## Vim stuff ##
###############
cd vim && brew bundle && cd -

ln -s ./vim/vimrc ~/.vimrc
ln -s ./vim/gvimrc ~/.gvimrc
ln -s ./vim ~/.vim
ln -s ./vim ~/.config/nvim

# TODO: PlugInstall command in vim and veovim

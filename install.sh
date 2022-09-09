#!/bin/bash

export HOMEBREW_INSTALL_FROM_API=true

echo "Remember to install WWDC colourscheme - See vim/README.md"

################
## Fish stuff ##
################
cd fish && brew bundle && cd -

ln -sf $(pwd)/fish ~/.config/fish

################
## Tmux stuff ##
################
cd tmux && brew bundle && cd -

ln -sf $(pwd)/tmux/tmux.conf ~/.tmux.conf

###############
## Vim stuff ##
###############
cd vim && brew bundle && cd -

ln -sf $(pwd)/vim/vimrc ~/.vimrc
ln -sf $(pwd)/vim/gvimrc ~/.gvimrc
ln -sf $(pwd)/vim ~/.vim
ln -sf $(pwd)/vim ~/.config/nvim

# TODO: PlugInstall command in vim and veovim

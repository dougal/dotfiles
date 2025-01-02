#!/bin/bash -xe

export HOMEBREW_INSTALL_FROM_API=true

echo "Remember to install WWDC colourscheme - See vim/README.md"

################
## Fish stuff ##
################
cd fish && brew bundle && cd -

mkdir -p ~/.config
ln -sf "$(pwd)/fish" ~/.config/fish

# Check if already there before running.
echo "Your password will be required to add fish to available shells..."
echo "$(brew --prefix)/bin/fish" | sudo tee -a /etc/shells

# TODO: Check is not already the shell before running.
echo "Your password will be required to change shell..."
chsh -s "$(brew --prefix)/bin/fish"

# Create directory for marks.
mkdir -p ~/.marks

################
## Tmux stuff ##
################
cd tmux && brew bundle && cd -

ln -sf "$(pwd)/tmux/tmux.conf" ~/.tmux.conf

###################
## Ghostty stuff ##
###################
cd ghostty && brew bundle && cd -

mkdir  -p "$HOME/.config/ghostty"
ln -sf "$(pwd)/ghostty/config" "$HOME/.config/ghostty/config"

###############
## Vim stuff ##
###############
cd vim && brew bundle && cd -

ln -sf "$(pwd)/vim/vimrc" ~/.vimrc
ln -sf "$(pwd)/vim/gvimrc" ~/.gvimrc
ln -sf "$(pwd)/vim" ~/.vim
ln -sf "$(pwd)/vim" ~/.config/nvim

###############
## Git stuff ##
###############
cd git && bash install.sh && cd -

# TODO: PlugInstall command in vim and neovim
# TODO: Defaults writes for terminal settings
# TODO: Install theme via script.

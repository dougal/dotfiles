# Installation

Fetch the repo:

    git clone git://github.com/dougal/dotvim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc
    ln -s ~/.vim ~/.config/nvim

Plugins are managed by [Plug](https://github.com/junegunn/vim-plug). Open a Vim
process and install plugins with:

    vim
    :PlugInstall

Install system dependencies:

    brew bundle

This installs the following:
  * Fuzzy finder. [Installation for other OS](https://github.com/junegunn/fzf#installation)
  * Silver Searcher. [Installation for other OS](https://github.com/ggreer/the_silver_searcher#installing)
  * Shellcheck. [Installation for other OS](https://github.com/koalaman/shellcheck#installing)

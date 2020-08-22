# Installation

Fetch the repo:

    git clone git://github.com/dougal/dotvim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule update --init

Install system dependecies:

    brew bundle

This installs the following:
  * Fuzzy finder. [Installation for other OS](https://github.com/junegunn/fzf#installation)
  * Silver Searcher. [Installation for other OS](https://github.com/ggreer/the_silver_searcher#installing)
  * Shellcheck. [Installation for other OS](https://github.com/koalaman/shellcheck#installing)

Additional documentation on [Synchronising plugs with git submodules and
Pathogen](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)


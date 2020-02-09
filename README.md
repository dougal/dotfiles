Installation:

    git clone git://github.com/dougal/dotvim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Install fzf:

    brew install fzf

  Instructions for other OS: https://github.com/junegunn/fzf#installation

Install ag:

    brew install ag

  Instructions for other OS: https://github.com/ggreer/the_silver_searcher#installing

Install shellcheck:

    brew install shellcheck

  Instructions for other OS: https://github.com/koalaman/shellcheck#installing

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

Additional documentation: http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/


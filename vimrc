" From https://github.com/tpope/vim-pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" Place swapfiles in tmp rather than working directory.
set dir=/tmp

" allow unsaved background buffers and remember marks/undo for them
set hidden
" remember more commands and search history
set history=10000

runtime startup/bindings.vim
runtime startup/display.vim
runtime startup/fuzzy-finder.vim
runtime startup/invisibles.vim
runtime startup/json.vim
runtime startup/linting.vim
runtime startup/search-in-file.vim
runtime startup/search-in-project.vim
runtime startup/tab-autocomplete.vim
runtime startup/tabs.vim
runtime startup/tabularize.vim
runtime startup/windows.vim
runtime startup/wrapping.vim


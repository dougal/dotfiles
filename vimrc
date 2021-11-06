call plug#begin()
Plug 'tpope/vim-commentary'
Plug 'mileszs/ack.vim'
Plug 'dense-analysis/ale'
Plug 'docunext/closetag.vim'
Plug 'junegunn/fzf.vim'
Plug 'godlygeek/tabular'
Plug 'moll/vim-bbye'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'ruanyl/vim-gh-line'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'
Plug 'p0deje/vim-ruby-interpolation'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
call plug#end()

" Turn on syntax if available and not already enabled.
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" Turns on filetype detection.
" Loads filetype-specific plugins if they exist.
" Loads filtetype-specific indent files if they exist.
if has('autocmd')
  filetype plugin indent on
endif

" Place swapfiles in tmp rather than working directory.
set dir=/tmp

" allow unsaved background buffers and remember marks/undo for them
set hidden
" remember more commands and search history
set history=10000

runtime startup/bindings.vim
runtime startup/display.vim
runtime startup/fuzzy-finder.vim
runtime startup/git.vim
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

" Temporary whilst I work out what to keep.
runtime startup/sensible.vim


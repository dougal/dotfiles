call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'dense-analysis/ale'
Plug 'docunext/closetag.vim'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'moll/vim-bbye'
Plug 'p0deje/vim-ruby-interpolation'
Plug 'ruanyl/vim-gh-line'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'

" Completion
if has('nvim')
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'quangnguyen30192/cmp-nvim-tags'
  Plug 'onsails/lspkind-nvim' " Symbols in completion menu.

  " Plug 'SirVer/ultisnips'
  " Plug 'hrsh7th/cmp-nvim-ultisnips'
endif
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
runtime startup/comments.vim
runtime startup/display.vim
runtime startup/fuzzy-finder.vim
runtime startup/git.vim
runtime startup/invisibles.vim
runtime startup/json.vim
runtime startup/linting.vim
runtime startup/search-in-file.vim
runtime startup/search-in-project.vim
runtime startup/tabs.vim
runtime startup/tabularize.vim
runtime startup/windows.vim
runtime startup/wrapping.vim

if has('nvim')
  runtime startup/completion.lua
else
  runtime startup/tab-autocomplete.lua
endif

" Temporary whilst I work out what to keep.
runtime startup/sensible.vim


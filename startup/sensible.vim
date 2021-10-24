" Lots of this originally from: https://github.com/tpope/vim-sensible
" Line-by-line explanation:
" https://towardsdatascience.com/explaining-every-line-of-vim-sensible-b776affec51a

" Turns on filetype detection.
" Loads filetype-specific plugins if they exist.
" Loads filtetype-specific indent files if they exist.
if has('autocmd')
  filetype plugin indent on
endif

" Turn on syntax if available and not already enabled.
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" Use :help 'option' to see the documentation for the given option.

" Copies indent from current line when starting a new line.
set autoindent

" Allow backspace over automatic indenting, line breaks, and the place where
" insert mode started.
set backspace=indent,eol,start

" Included files are ommitted from completion.
set complete-=i

" Add or delete a 'shiftwidth' worth of space when indenting our outdenting.
set smarttab

" When incrementing or decrementing, treat numbers with leading zeros as
" decimals, rather thaan octals.
set nrformats-=octal

" Wait 100ms for key codes to be completed.
if !has('nvim') && &ttimeoutlen == -1
  set ttimeout
  set ttimeoutlen=100
endif

" Show what a typed pattern matches as it is being typed.
set incsearch

" Always have a status bar on the last window.
set laststatus=2
"
" Show the line and column number of the cursor position.
set ruler

" Enhanced tab-completion for command line. Displays suggestions in line above.
set wildmenu

" Don't print '@@@' when the last line of a window is too long to display.
set display+=lastline

" Default to UTF-8 if using the default, and when running in GUI mode.
if &encoding ==# 'latin1' && has('gui_running')
  set encoding=utf-8
endif

" Delete comment character when joining commented lines
if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j
endif

" Check extra locations for tags files.
if has('path_extra')
  setglobal tags-=./tags tags-=./tags; tags^=./tags;
endif

" Do not use fish as shell in old versions of Vim.
if &shell =~# 'fish$' && (v:version < 704 || v:version == 704 && !has('patch276'))
  set shell=/usr/bin/env\ bash
endif

" Re-read a file if it's content has been changed outside of Vim.
set autoread

" Maximum number of tab pages to be opened by the |-p| command line
" argument or the ":tab all" command.
if &tabpagemax < 50
  set tabpagemax=50
endif

" Only save and restore global variables wihc start with an uppercase letter,
" and don't contain a lowercase letter.
if !empty(&viminfo)
  set viminfo^=!
endif

" Do not save options, mappings, and globabl values when creating a new
" sessions.
set sessionoptions-=options

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif


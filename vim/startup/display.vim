if has('nvim')
  colorscheme dracula
endif

" Use the terminal background colour
hi Normal ctermbg=NONE guibg=NONE

" Hybrid line numbers for focussed normal-mode.
" Absolute line numbers everywhere else.
" From: https://jeffkreeftmeijer.com/vim-number/
:set number
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

" Always show five lines around the cursor.
set scrolloff=5

" Always have at least 5 columns around the cursor.
set sidescrolloff=5

" Update every 0.1s for fast gitgutter.
set updatetime=100

" Set terminal title, and turn off bell.
set title
set visualbell

" Make the sign column background the same as the line numbers.
highlight! link SignColumn LineNr

" GUI Background matches Macvim sidebar when used with vividchalk.
highlight GitGutterAdd    guifg=#009900 guibg=NONE ctermfg=2 ctermbg=Black
highlight GitGutterChange guifg=#bbbb00 guibg=NONE ctermfg=3 ctermbg=Black
highlight GitGutterDelete guifg=#ff2222 guibg=NONE ctermfg=1 ctermbg=Black

" Have jbuilder files be syntax highlighted as Ruby.
au BufReadPost *.jbuilder set syntax=ruby

" Have handlebars files be syntax highlighted as HTML.
au BufReadPost *.hbs set syntax=html

" Disable NetRW file listing when opening new project.
let loaded_netrwPlugin = 1


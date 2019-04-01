" From https://github.com/tpope/vim-pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" Invisibles the same as TextMate.
set listchars=tab:▸\ ,eol:¬

" Disable arrow keys
nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>
nnoremap <Right> :echo "No right for you!"<CR>
vnoremap <Right> :<C-u>echo "No right for you!"<CR>
inoremap <Right> <C-o>:echo "No right for you!"<CR>
nnoremap <Up> :echo "No up for you!"<CR>
vnoremap <Up> :<C-u>echo "No up for you!"<CR>
inoremap <Up> <C-o>:echo "No up for you!"<CR>
nnoremap <Down> :echo "No down for you!"<CR>
vnoremap <Down> :<C-u>echo "No down for you!"<CR>
inoremap <Down> <C-o>:echo "No down for you!"<CR>

set ts=2 sts=2 sw=2 expandtab

:colorscheme vividchalk

" Always display the gutter numbers.
set number

" Update ever 0.1s for fast gitgutter.
set updatetime=100

" GUI Background matches Macvim sidebar when used with vividchalk.
highlight GitGutterAdd    guifg=#009900 guibg=#222222 ctermfg=2 ctermbg=Black
highlight GitGutterChange guifg=#bbbb00 guibg=#222222 ctermfg=3 ctermbg=Black
highlight GitGutterDelete guifg=#ff2222 guibg=#222222 ctermfg=1 ctermbg=Black

" Move up or down one line regardless of line wrapping.
" From: https://statico.github.io/vim.html
nmap j gj
nmap k gk

" Some sensible search options from: https://statico.github.io/vim.html
set incsearch " Highlight as expression is typed.
set ignorecase " Ignore case...
set smartcase " ...except when search includes uppercase letters.
set hlsearch " Highlight the current search...
nmap \q :nohlsearch<CR> " ...unhighlight search.


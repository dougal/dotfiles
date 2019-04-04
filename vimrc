" From https://github.com/tpope/vim-pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" Place swapfiles in tmp rather than working directory.
:set dir=/tmp

let mapleader = " "

" Invisibles the same as TextMate.
set listchars=tab:▸\ ,eol:¬
" Hide and show invisibles quickly.
nmap <leader>i :set list!<CR>

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
nmap <leader>q :nohlsearch<CR> " ...unhighlight search.

" Setup basic fzf Vim plugin.
set rtp+=/usr/local/opt/fzf
nmap <leader>t :FZF<CR>
nmap <leader>y :Buffers<CR>

" Faster switching of windows.
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Help out my fat fingers
command! Q q
command! W w

" Us ag as the cross-file search.
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Keybinds for Tabular, taken from SPF13.
nmap <Leader>a& :Tabularize /&<CR>
vmap <Leader>a& :Tabularize /&<CR>
nmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
vmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
nmap <Leader>a=> :Tabularize /=><CR>
vmap <Leader>a=> :Tabularize /=><CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a:: :Tabularize /:\zs<CR>
vmap <Leader>a:: :Tabularize /:\zs<CR>
nmap <Leader>a, :Tabularize /,<CR>
vmap <Leader>a, :Tabularize /,<CR>
nmap <Leader>a,, :Tabularize /,\zs<CR>
vmap <Leader>a,, :Tabularize /,\zs<CR>
nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
vmap <Leader>a<Bar> :Tabularize /<Bar><CR>

map :jsonpp :%!python -m json.tool


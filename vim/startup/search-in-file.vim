" Some sensible search options from: https://statico.github.io/vim.html
set incsearch " Highlight as expression is typed.
set ignorecase " Ignore case...
set smartcase " ...except when search includes uppercase letters.
set hlsearch " Highlight the current search...
nmap <leader>ff :nohlsearch<CR> " ...unhighlight search.


" Put cursor on middle of screen when moving between matches.
nnoremap n nzz
nnoremap N Nzz

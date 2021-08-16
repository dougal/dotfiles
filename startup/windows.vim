" Faster switching of windows.
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Open new windows below or to the right.
" Feels more natural than default.
set splitbelow
set splitright

" Close the current buffer without closing the window.
nnoremap <leader>q :Bwipeout<CR>

" Save file on lost focus
autocmd FocusLost * :wa


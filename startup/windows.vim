" Switch windows without using control.
" Need to unmap Fugutive binds so <leader>h is fast.
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l

" New vertical split without using control.
map <leader>v <C-w>v

" Open new windows below or to the right.
" Feels more natural than default.
set splitbelow
set splitright

" Close the current buffer without closing the window.
nnoremap <leader>q :Bwipeout<CR>

" Save file on lost focus
autocmd FocusLost * :wa


" Find FZF binary in the correct place.
set rtp+=/usr/local/opt/fzf

" Include hidden files, but not .gitignored files.
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

" All files
nmap <leader>t :FZF<CR>

" Buffers
nmap <leader>y :Buffers<CR>

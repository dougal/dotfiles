" Handle different FZF install locations. Mostly for Apple Silicon Macs.
if isdirectory('/opt/homebrew')
  set rtp+=/opt/homebrew/opt/fzf
else
  set rtp+=/usr/local/opt/fzf
endif

" Include hidden files, but not .gitignored files.
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

" Fix weird highlights in Neovim. Leave untouched for vim as has opposite
" effect there.
if has('nvim')
  let g:fzf_colors = {}
endif

" All files
nmap <leader>t :FZF<CR>

" Buffers
nmap <leader>y :Buffers<CR>

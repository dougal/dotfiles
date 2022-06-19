" Window movement shortcuts
" move to the window in the direction shown, or create a new window
" https://github.com/nicknisi/dotfiles/blob/b9e1d2af05251392fd88d88861470d3acb52790d/config/nvim/plugin/winmove.vim
function s:WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

" Faster switching of windows.
map <C-h> :<C-U>call <SID>WinMove('h')<CR>
map <C-j> :<C-U>call <SID>WinMove('j')<CR>
map <C-k> :<C-U>call <SID>WinMove('k')<CR>
map <C-l> :<C-U>call <SID>WinMove('l')<CR>

" Open new windows below or to the right.
" Feels more natural than default.
set splitbelow
set splitright

" Close the current buffer without closing the window.
nnoremap <leader>q :Bwipeout<CR>

" Save file on lost focus
autocmd FocusLost * :wa


" Multipurpose tab key.
" Indent if we're at the beginning of a line. Else, do completion.
" From https://github.com/garybernhardt/dotfiles/blob/master/.vimrc#L262-L277
function! InsertTabWrapper()
    " At beginning of line? Indent.
    let col = col('.') - 1
    if !col
        return "\<tab>"
    endif

    let char = getline('.')[col - 1]
    if char =~ '\k'
        " There's an identifier before the cursor, so complete the identifier.
        return "\<c-p>"
    else
        " Indent.
        return "\<tab>"
    endif
endfunction
inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>


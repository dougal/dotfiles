" Us ag as the cross-file search.
if executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case'
endif

" Don't jump the first search result.
cnoreabbrev Ack Ack!

" Nicer shortcut to get to Ack.
nnoremap <Leader>/ :Ack!<Space>


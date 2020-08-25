:colorscheme vividchalk

" Absolute line numbering
set number

" Always show three lines around the cursor.
set scrolloff=5

" Update every 0.1s for fast gitgutter.
set updatetime=100

" Set terminal title, and turn off bell.
set title
set visualbell

" GUI Background matches Macvim sidebar when used with vividchalk.
highlight GitGutterAdd    guifg=#009900 guibg=#222222 ctermfg=2 ctermbg=Black
highlight GitGutterChange guifg=#bbbb00 guibg=#222222 ctermfg=3 ctermbg=Black
highlight GitGutterDelete guifg=#ff2222 guibg=#222222 ctermfg=1 ctermbg=Black

" Have jbuilder files be syntax highlighted as Ruby.
au BufReadPost *.jbuilder set syntax=ruby
"
" Disable NetRW file listing when opening new project.
let loaded_netrwPlugin = 1


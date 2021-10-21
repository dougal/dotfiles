" Run Sorbet type checker with `bundle exec srb`.
let g:ale_ruby_sorbet_executable = 'bundle'

" See: https://github.com/dense-analysis/ale#2ii-fixing
nmap <leader>x :ALEFix<CR> " ...Run ALE fixer.
let g:ale_fixers = {
\  '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'go': ['gofmt'],
\  'json': ['prettier'],
\  'ruby': ['sorbet', 'rubocop'],
\  'tf': ['terraform'],
\  'javascript': ['prettier'],
\  'sh': ['shellcheck'],
\}


" Run Sorbet type checker with `bundle exec srb`.
let g:ale_ruby_sorbet_executable = 'bundle'

" See: https://github.com/dense-analysis/ale#2ii-fixing
nmap <leader>x :ALEFix<CR> " ...Run ALE fixer.

let fixers = {
\  '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'go': ['gofmt'],
\  'json': ['prettier'],
\  'tf': ['terraform'],
\  'javascript': ['prettier'],
\  'sh': ['shellcheck'],
\}

" Disable Ruby linters in Nvim as handled by lsp/solargraph.
if !has('nvim')
  let fixers.ruby = ['sorbet', 'rubocop']
endif

let g:ale_fixers = fixers

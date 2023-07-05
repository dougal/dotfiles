# Create a new PR, filling in the details automatically from commits, and opening
# the web browser.
abbr -a prn gh pr create -f -w -a @me

# Checkout a PR, using FZF to select the PR from a list.
abbr -a pr 'gh pr list -L 100 | fzf | awk "{print \$1}" | xargs -I "{}" gh pr checkout "{}"'

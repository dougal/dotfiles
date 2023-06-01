abbr -a ta "tmux attach"
abbr -a ts "tmux-sessionizer"

# Fix SSH agent environment variable staleness.
# Once a tmux session has been open for some time, the variable describing where
# to fid the SSH agent socket becomes stale and prevents usage of SSH.
abbr -a fixssh "set -gx SSH_AUTH_SOCK (tmux showenv SSH_AUTH_SOCK | awk -F"=" '{print \$2}')"

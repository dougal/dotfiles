abbr -a ta "tmux attach"
abbr -a fixssh "set -gx SSH_AUTH_SOCK (tmux showenv SSH_AUTH_SOCK | awk -F"=" '{print \$2}')"

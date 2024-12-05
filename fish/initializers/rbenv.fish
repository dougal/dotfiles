# The following is obtained by running `rbenv init`.

# Prevent rbenv being added to the $PATH multiple times in subshells.
if not contains -- "$HOME/.rbenv/shims" $PATH
  status --is-interactive; and rbenv init - --no-rehash fish | source
end

# The following is obtained by running `nodenv init`.

# Prevent nodenv being added to the $PATH multiple times in subshells.
if not contains -- "$HOME/.nodenv/shims" $PATH
  status --is-interactive; and nodenv init - fish | source
end

fish_add_path --append --path ./node_modules/.bin

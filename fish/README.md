# Fish

## Setup

1. Link the config

```shell
ln -s ~/.dotfiles/fish ~/.config/fish
```

2. Add fish as a system shell

This command assumes BASH or ZSH

```shell
echo “$(brew --prefix)/bin/fish” | sudo tee -a /etc/shells
```

3. Select Fish as the default shell


```shell
chsh -s $(brew --prefix)/bin/fish
```

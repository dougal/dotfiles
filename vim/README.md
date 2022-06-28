# Installation

Fetch the repo:

```bash
git clone git://github.com/dougal/dotvim.git ~/.vim
```

Create symlinks:

```bash
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim/gvimrc ~/.gvimrc
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/vim ~/.config/nvim
```

Plugins are managed by [Plug](https://github.com/junegunn/vim-plug). Open a Vim
process and install plugins with:

```vimscript
:PlugInstall
```

Install system dependencies:

```bash
brew bundle
```

This installs the following:
  * Fuzzy finder. [Installation for other OS](https://github.com/junegunn/fzf#installation)
  * Silver Searcher. [Installation for other OS](https://github.com/ggreer/the_silver_searcher#installing)
  * Shellcheck. [Installation for other OS](https://github.com/koalaman/shellcheck#installing)

Matching colourscheme for terminal:

If on MacOS using iTerm or Terminal.app, install the
[WWCD16](https://github.com/jeffkreeftmeijer/wwdc16.terminal) colourscheme.

```bash
curl -OO https://raw.githubusercontent.com/jeffkreeftmeijer/wwdc16.terminal/master/wwdc16-dark.terminal
open wwdc16-dark.terminal
```

This can be set as default in Terminal.app by opening preference, navigating to
`Profiles`, selecting the `Text` tab, selecting the `wwdc16-dark` theme, and
clicking the `Default` button in the bottom right of the source panel.

Typeface should be Monaco 11.

Select `Use bright colours for bold text`.
Select `Cursor - Blink cursor`

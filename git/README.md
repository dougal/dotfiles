# Git Config


## Setup

```bash
bash install.sh
```

## Ctags

The install script sets up and configures CTags using [Tim Pope's Effortless
CTags](https://tbaggery.com/2011/08/08/effortless-ctags-with-git.html). This
results in ctags being run automatically on git actions, with the resulting
ctags file being available to Vim and other tools for autocomplete.

If ctags is not already configured for a git repo run `git init` in the root
directory of the repo.

To manually run ctags for a repository, run `git ctags`.


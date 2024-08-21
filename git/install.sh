#!/bin/bash

mkdir -p ~/.git_template
cp -r hooks ~/.git_template/

# Set the git template directory
git config --global init.templatedir '~/.git_template'

# Alias `git ctags`
git config --global alias.ctags '!.git/hooks/ctags'

# Make `main` the default branch
git config --global init.defaultBranch main

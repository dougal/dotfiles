# Go binaries
fish_add_path --append --path ~/go/bin

# Golang scripts.
fish_add_path --append --path (brew --prefix)/opt/go/libexec/bin

# Golang workspace.
set -x GOPATH $HOME/projects/go
fish_add_path --append --path $GOPATH/bin

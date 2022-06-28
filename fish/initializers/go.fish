# Go binaries
set PATH $PATH ~/go/bin

# Golang scripts.
set PATH $PATH (brew --prefix)/opt/go/libexec/bin

# Golang workspace.
set -x GOPATH $HOME/projects/go
set PATH $PATH $GOPATH/bin

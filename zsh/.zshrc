export NIX_PATH=$HOME/.nix-defexpr/channels${NIX_PATH:+:}$NIX_PATH
export EDITOR=vim
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# Dotfiles

I use OSX with Nix as a package manager.

```
# Install Nix on Big Sur
# https://gist.github.com/angerman/cbe02d814d81a8e4d4ced56b19046c19
sh <(curl -L https://nixos.org/nix/install) --darwin-use-unencrypted-nix-store-volume

nix-channel --add https://github.com/rycee/home-manager/archive/master.tar.gz home-manager
nix-channel --update

nix-shell '<home-manager>' -A install

# symlink the dotfiles
stow neovim
stow nix
stow zsh

home-manager switch
```


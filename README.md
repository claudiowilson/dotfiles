# Dotfiles

I use OSX with Nix as a package manager.

```
# Install Nix on Catalina
# Source: https://medium.com/@robinbb/install-nix-on-macos-catalina-ca8c03a225fc
echo 'nix' | sudo tee -a /etc/synthetic.conf
reboot  # Actually reboot your Mac.
sudo diskutil apfs addVolume disk1 APFSX Nix -mountpoint /nix
sudo diskutil enableOwnership /nix
sudo chflags hidden /nix
echo "LABEL=Nix /nix apfs rw" | sudo tee -a /etc/fstab
sh <(curl https://nixos.org/nix/install) --daemon

nix-channel --add https://github.com/rycee/home-manager/archive/master.tar.gz home-manager
nix-channel --update

nix-shell '<home-manager>' -A install

export NIX_PATH=$HOME/.nix-defexpr/channels${NIX_PATH:+:}$NIX_PATH
cp .config/nixpkgs/home.nix ~/
home-manager switch
```


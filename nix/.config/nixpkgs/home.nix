{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "20.03";

  home.packages = with pkgs; [
    neovim
    tmux
    wget
    zsh
    oh-my-zsh
    gradle
    zsh-autosuggestions
    antigen
    nodejs
    maven
    python3
    python37Packages.flake8
    python37Packages.pip
    sqlite
  ];

  programs.zsh.profileExtra = ''
    alias vim="nvim"  
  '';

  programs.zsh.initExtra = ''
    export NIX_PATH=$HOME/.nix-defexpr/channels''${NIX_PATH:+:}$NIX_PATH
    export EDITOR=vim
    export ZSH=${pkgs.oh-my-zsh}/share/oh-my-zsh/
    source ${pkgs.antigen}/share/antigen/antigen.zsh
    source $ZSH/oh-my-zsh.sh
    antigen bundle mafredri/zsh-async
    antigen bundle sindresorhus/pure
    antigen apply
  '';

  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    oh-my-zsh.enable = true;
  };
}

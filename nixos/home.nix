{ config, pkgs, ... }:

{
  home.username = "mexaa";
  home.homeDirectory = "/home/mexaa";
  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    firefox
    git
    zsh
    neovim
    niri
    kitty
    fastfetch
    waybar
    telegram-desktop
    
    gcc
    gnumake
    pkg-config
    cmake
    go

    tree-sitter
    wl-clipboard
    curl
    unzip
    nerd-fonts.ubuntu-mono
    font-awesome
    noto-fonts
    noto-fonts-color-emoji
    grim 
    slurp
  ];

  programs.git = {
    enable = true;
    userName = "Mexaas";
    userEmail = "ruslancernaso2@gmail.com";

    extraConfig = {
      credential.helper = "store";
    };
  };

  xdg.configFile = {
    "niri".source = /home/mexaa/.dotfiles/niri;
    "kitty".source = /home/mexaa/.dotfiles/kitty;
    "waybar".source = /home/mexaa/.dotfiles/waybar;
    "nvim".source = /home/mexaa/.dotfiles/nvim;
    "fastfetch".source = /home/mexaa/.dotfiles/fastfetch;
  };

  home.file = {
    ".zshrc".source = /home/mexaa/.dotfiles/zsh/.zshrc;
  };

  home.sessionVariables = {};
  programs.home-manager.enable = true;
}

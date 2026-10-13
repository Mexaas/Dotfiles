{ config, pkgs, ... }:

{
  home.username = "mexaa";
  home.homeDirectory = "/home/mexaa";
  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    firefox
    neovim
    niri
    kitty
    fastfetch
    waybar
    telegram-desktop

    tree-sitter
    wl-clipboard
    nerd-fonts.ubuntu-mono
    font-awesome
    noto-fonts
    noto-fonts-color-emoji
    grim 
    slurp
  ];

  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Mexaas";
        email = "ruslancernaso2@gmail.com";
      };
      credential.helper = "store";

      init = {
        defaultBranch = "main";
      };
    };
  };

  xdg.configFile = {
    "niri".source = ../niri;
    "kitty".source = ../kitty;
    "waybar".source = ../waybar;
    "nvim".source = ../nvim;
    "fastfetch".source = ../fastfetch;
    "yamusic-tui".source = ../yamusic-tui;
    "concord".source = ../concord;
  };

  home.file = {
    ".zshrc".source = ../zsh/.zshrc;
  };

  home.sessionVariables = {};
  programs.home-manager.enable = true;
}

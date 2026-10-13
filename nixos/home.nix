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
    "niri".source = /home/mexaa/.dotfiles/niri;
    "kitty".source = /home/mexaa/.dotfiles/kitty;
    "waybar".source = /home/mexaa/.dotfiles/waybar;
    "nvim".source = /home/mexaa/.dotfiles/nvim;
    "fastfetch".source = /home/mexaa/.dotfiles/fastfetch;
    "yamusic-tui".source = /home/mexaa/.dotfiles/yamusic-tui;
    "concord".source = /home/mexaa/.dotfiles/concord;
  };

  home.file = {
    ".zshrc".source = /home/mexaa/.dotfiles/zsh/.zshrc;
  };

  home.sessionVariables = {};
  programs.home-manager.enable = true;
}

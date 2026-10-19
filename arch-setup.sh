#!/bin/bash

GREEN='\033[0;32m'
set -e

CONFIG_PATH="$HOME/.config"
DOTFILES_PATH="$HOME/Dotfiles"

# folder -> ~/.config/*
# home   -> ~/*
declare -A CFG_DIRECTIONS=(
  ["nvim"]="folder"
  ["kitty"]="folder"
  ["niri"]="folder"
  ["fastfetch"]="folder"
  ["waybar"]="folder"
  ["yamusic-tui"]="folder"
  ["user-dirs.dirs"]="folder"
  ["zsh/.zshrc"]="home"
  ["git-settings/.gitconfig"]="home"
)
echo -e "${GREEN} Starting system setup | https://github.com/Mexaas/Dotfiles"

mkdir -p "$CONFIG_PATH"
for key in "${!CFG_DIRECTIONS[@]}"; do
  if [ "${CFG_DIRECTIONS[$key]}" = "home" ]; then
    touch "$HOME/${key##*/}"
  fi
done

for value in "${!CFG_DIRECTIONS[@]}"; do
  if [ "${CFG_DIRECTIONS[$value]}" = "folder" ]; then
    ln -sf "$DOTFILES_PATH/$value" "$CONFIG_PATH/$value"
  else
    if [ "${CFG_DIRECTIONS[$value]}" = "home" ]; then
      ln -sf "$DOTFILES_PATH/$value" "$HOME/${value##*/}" 
    fi
  fi
done

#cd ~/ && git clone https://aur.archlinux.org/yay.git
#cd yay && makepkg -si --noconfirm
#cd ~/ && rm -rf yay
#yay -S --needed --noconfirm vesktop
#go install github.com/dece2183/yamusic-tui@latest

echo -e "${GREEN} Done"

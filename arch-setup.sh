#!/bin/bash

GREEN='\033[0;32m'
set -e

CONFIG_PATH="$HOME/.config"
DOTFILES_PATH="$HOME/.dotfiles"
DOT_DIRECTIONS=(
  "nvim"
  "kitty"
  "niri"
  "fastfetch"
  "waybar"
  "yamusic-tui"
  "concord"
)
echo -e "${GREEN} Starting system setup... | https://github.com/Mexaas/Dotfiles"
for folder in "${DOT_DIRECTIONS[@]}"; do
  mkdir -p "$DOTFILES_PATH/$folder"
done

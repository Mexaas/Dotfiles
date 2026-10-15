#!/bin/bash

GREEN='\033[0;32m'
set -e

CONFIG_PATH="$HOME/.config"
DOTFILES_PATH="$HOME/.dotfiles"

declare -A CFG_DIRECTIONS=(
  ["nvim"]="1"
  ["kitty"]="1"
  ["niri"]="1"
  ["fastfetch"]="1"
  ["waybar"]="1"
  ["yamusic-tui"]="1"
  ["concord"]="1"
  ["user-dirs"]="0"
)

echo -e "${GREEN} Starting system setup... | https://github.com/Mexaas/Dotfiles"
for key in "${!CFG_DIRECTIONS[@]}"; do
  if [ "${CFG_DIRECTIONS[$key]}" = "1" ]; then
    mkdir -p "$DOTFILES_PATH/$key"
  else
    if [ "$key" = "user-dirs" ]; then
      cat << 'EOF' > "$CONFIG_PATH/user-dirs.dirs"
XDG_DESKTOP_DIR="$HOME"
XDG_DOWNLOAD_DIR="$HOME/downloads"
XDG_TEMPLATES_DIR="$HOME"
XDG_PUBLICSHARE_DIR="$HOME"
XDG_DOCUMENTS_DIR="$HOME"
XDG_MUSIC_DIR="$HOME"
XDG_PICTURES_DIR="$HOME/images"
XDG_VIDEOS_DIR="$HOME"
XDG_PROJECTS_DIR="$HOME/projects"
EOF
    fi
  fi
done

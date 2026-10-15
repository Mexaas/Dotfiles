#!/bin/bash

GREEN='\033[0;32m'
set -e

CONFIG_PATH="$HOME/.config"
DOTFILES_PATH="$HOME/.dotfiles"

declare -A CFG_DIRECTIONS=(
  ["nvim"]="folder"
  ["kitty"]="folder"
  ["niri"]="folder"
  ["fastfetch"]="folder"
  ["waybar"]="folder"
  ["yamusic-tui"]="folder"
  ["concord"]="folder"
  ["user-dirs.dirs"]="file"
)

echo -e "${GREEN} Starting system setup... | https://github.com/Mexaas/Dotfiles"
for key in "${!CFG_DIRECTIONS[@]}"; do
  if [ "${CFG_DIRECTIONS[$key]}" = "folder" ]; then
    mkdir -p "$CONFIG_PATH"
  else
    if [ "${CFG_DIRECTIONS[$key]}" = "file" ]; then
      cat << 'EOF' > "$CONFIG_PATH/$key"
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

for value in "${!CFG_DIRECTIONS[@]}"; do
  if [ "${CFG_DIRECTIONS[$value]}" = "folder" ]; then
    ln -sf "$DOTFILES_PATH/$value" "$CONFIG_PATH/$value"
  fi
done

sleep 1
echo -e "${GREEN} Done, ~/.config/files & ~/.dotfiles -> Created | https://github.com/Mexaas/Dotfiles"

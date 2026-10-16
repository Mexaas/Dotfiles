#!/bin/bash

GREEN='\033[0;32m'
set -e

CONFIG_PATH="$HOME/.config"
DOTFILES_PATH="$HOME/Dotfiles"

declare -A CFG_DIRECTIONS=(
  ["nvim"]="folder"
  ["kitty"]="folder"
  ["niri"]="folder"
  ["fastfetch"]="folder"
  ["waybar"]="folder"
  ["yamusic-tui"]="folder"
  ["user-dirs.dirs"]="file"
)

echo -e "${GREEN} Starting system setup | https://github.com/Mexaas/Dotfiles"
for key in "${!CFG_DIRECTIONS[@]}"; do
  if [ "${CFG_DIRECTIONS[$key]}" = "folder" ]; then
    mkdir -p "$CONFIG_PATH"
  else
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
done

for value in "${!CFG_DIRECTIONS[@]}"; do
  if [ "${CFG_DIRECTIONS[$value]}" = "folder" ]; then
    ln -sf "$DOTFILES_PATH/$value" "$CONFIG_PATH/$value"
  fi
done

#cd ~/ && git clone https://aur.archlinux.org/yay.git
#cd yay && makepkg -si --noconfirm
#cd ~/ && rm -rf yay
#yay -S --needed --noconfirm vesktop nvibrant
cat << 'EOF' > "$HOME/.gitconfig"
[credential]
	helper = store
[user]
	name = none
	email = none
EOF


echo -e "${GREEN} Done"

#!/bin/bash

GREEN='\033[0;32m'
HOSTNAME="mexaa"
USERNAME="mexaa"
PASSWORD="234"
ROOTPASSWORD="234"

set -e
PACKAGES=(
    "linux"
    "linux-firmware"
    "base-devel"
    "gcc"
    "clang"
    "cmake"
    "pkg-config"
    "mpv"
    "networkmanager"
    "niri" 
    "xdg-desktop-portal-gnome"
    "xdg-desktop-portal-gtk" 
    "xwayland-satellite"
    "pipewire"
    "pipewire-alsa"
    "pipewire-pulse" 
    "pipewire-jack" 
    "wireplumber" 
    "pavucontrol"
    "zsh" 
    "neovim"
    "telegram-desktop"
    "kitty"
    "firefox" 
    "waybar" 
    "fastfetch"
    "git"
    "tree-sitter-cli" 
    "wl-clipboard"
    "noto-fonts"
    "noto-fonts-emoji"
    "ttf-ubuntu-mono-nerd"
    "go"
    "rustup"
    "grub"
    "efibootmgr"
    "os-prober"

    #AMD
    #"mesa" 
    #"amd-ucode"
    #"xf86-video-amdgpu"

    # NVIDIA
    #"linux-headers" 
    #"nvidia-dkms"

    # NOTEBOOKS
    #"brightnessctl"
)

echo -e "${GREEN} Starting build system... | https://github.com/Mexaas/Dotfiles"
sudo pacman -S --needed "${PACKAGES[@]}"

ln -sf /usr/share/zoneinfo/Asia/Almaty /etc/localtime
sed -i 's/#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen
sed -i 's/#ru_RU.UTF-8 UTF-8/ru_RU.UTF-8 UTF-8/' /etc/locale.gen
echo "LANG=ru_RU.UTF-8" > /etc/locale.conf
echo "$HOSTNAME" > /etc/hostname
useradd -m -G wheel -s /bin/zsh "$USERNAME"
echo "$USERNAME:$PASSWORD" | chpasswd
echo "root:$ROOTPASSWORD" | chpasswd
sed -i 's/# %wheel ALL=(ALL:ALL) ALL/%wheel ALL=(ALL:ALL) ALL/' /etc/sudoers

systemctl enable NetworkManager
# NVIDIA: REQUIRED --> sed -i 's/^MODULES=(/MODULES=(nvidia nvidia_modeset nvidia_uvm nvidia_drm /' /etc/mkinitcpio.conf
# NVIDIA: REQUIRED --> mkinitcpio -P
# NVIDIA: REQUIRED --> sed -i 's/^GRUB_CMDLINE_LINUX_DEFAULT=.*/GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3 quiet nvidia_drm.modeset=1"/g' /etc/default/grub
# DUAL-BOOT --> echo "GRUB_DISABLE_OS_PROBER=false" >> /etc/default/grub

grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

echo -e "-----------> Build completed, pc will be reboot soon"
sleep 3
exit
umount -R /mnt
reboot

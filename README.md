# 📬 My Dotfiles
This is a repository of what I use daily. Installation is available for both ` NixOS ` and ` Arch Linux `. All scripts are open-source for custom editing
|Software|Description|
|----------------|-----------------------------|
|⚙️ [Neovim](https://github.com/Mexaas/Mexvim)|Code editor|
|🚀 [Kitty](https://sw.kovidgoyal.net/kitty/)|Terminal|
|🎧 [Concord](https://github.com/chojs23/concord)|Discord Tui client|
|🎵 [Yamusic-tui](https://github.com/DECE2183/yamusic-tui)|YandexMusic Tui client|
|📦 [Niri](https://niri-wm.github.io/niri/index.html)|Niri WM configuration|
|🔎 [Waybar](https://waybar.org/)|Bar configuration|
|📬 [Fastfetch](https://github.com/fastfetch-cli/fastfetch)|Fastfetch|
|💻 [Zsh](https://zsh.org)|Shell|
|💼 [NixOS](https://nixos.org/)|NixOS Setup Environment|
|🧑🏻‍💻 [Arch Linux](https://archlinux.org/)|Arch Setup Environment|

# 📦 NixOS - Flake install guide
> [!IMPORTANT]
> The Flake installer allows for the automatic installation of my NixOS build, where key files like ` /etc/nixos/configuration.nix ` operate from the ` Dotfiles ` folder. It’s convenient to have everything in one place, but this is something to keep in mind
After system install, you must to clone repository, in the home directory as an example
```shell
cd ~/ && git clone --depth 1 https://github.com/Mexaas/Dotfiles
```
Make sure you added ` hardware-configuration.nix ` to ` ~/Dotfiles/nixos/ `, because flake.nix builds your system into ` Dotfiles folder ` instead of ` /etc/nixos/ `
```shell
# Delete example hardware-configuration from your Dotfiles folder
rm -rf ~/Dotfiles/nixos/hardware-configuration.nix

# Generate hardware-configuration if it does not exist
sudo nixos-generate-config

# Copy original hardware-configuration file to your future Dotfiles folder
sudo cp /etc/nixos/hardware-configuration.nix ~/Dotfiles/nixos/hardware-configuration.nix
```
After completing all the steps, your folder should contain general files
```shell
~/Dotfiles/
├── flake.nix
├── flake.lock
└── nixos/
    ├── configuration.nix
    ├── hardware-configuration.nix
    └── home.nix
```
Make sure you have edited the ` flake.nix `, don't forget to change the user variable. In addition, you can change the working environment and the required packages in ` /nixos/home.nix `, and system settings in ` /nixos/configuration.nix `. You can now start assembling the system. Make sure you have run ` git add . `. Flake.nix only sees staged files
```shell
sudo nixos-rebuild switch --flake ~/Dotfiles#flake-username
```


# 📦 Arch Linux - Bash install guide
> [!IMPORTANT]
> Bash installer supports only after entering ` arch-chroot /mnt `
After logging in, navigate to the home directory and clone the repository to obtain `arch-install.sh`
```shell
cd ~/ && git clone --depth 1 https://github.com/Mexaas/Dotfiles
```
Make sure you have edited the ` arch-install.sh ` to suit your needs. The installer supports both NVIDIA and AMD packages; enable the ones you need. It also includes Grub-OSProber support for dual-booting, as well as other settings required for NVIDIA
```shell
nano ~/Dotfiles/arch-install.sh
```
Run installer file
```shell
cd ~/Dotfiles && ./arch-install.sh
```

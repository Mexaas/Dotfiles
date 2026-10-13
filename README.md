# My Dotfiles
Hi, these are the configs I use daily when working on Linux.
|Software|Path|Description
|----------------|-------------------------------|-----------------------------|
|⚙️ [Neovim](https://github.com/Mexaas/Mexvim)||Code editor|
|🚀 [Kitty](https://sw.kovidgoyal.net/kitty/)||Terminal|
|🎧 [Concord](https://github.com/chojs23/concord)||Discord Tui client|
|🎵 [Yamusic-tui](https://github.com/DECE2183/yamusic-tui)||YandexMusic Tui client|
|📦 [Niri](https://niri-wm.github.io/niri/index.html)||Niri WM configuration|
|🔎 [Waybar](https://waybar.org/)||Bar configuration|
|📬 [Fastfetch](https://github.com/fastfetch-cli/fastfetch)||Fastfetch|
|💻 [Zsh](https://zsh.org)||Shell|
|⚙️ [NixOS](https://nixos.org/)||My NixOS setup|

> [!IMPORTANT]
> If you use this repository as a flake to build your NixOS
Make sure you added ` hardware-configuration.nix ` to ` .dotfiles/nixos/ `, because flake.nix builds your system into ` .dotfiles ` instead of ` /etc/nixos `
- How i can do this?
```shell
sudo nixos-generate-config
```
```shell
sudo cp /etc/nixos/hardware-configuration.nix ~/.dotfiles/nixos/hardware-configuration.nix
```
```shell
sudo nixos-rebuild switch --flake ~/.dotfiles#flake_config_user
```

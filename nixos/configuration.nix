{ config, lib, pkgs, ... }:
{
  imports =
    [
      ./hardware-configuration.nix
    ];
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  boot.loader.systemd-boot.enable = false;
  boot.loader.grub.enable = true;
  boot.loader.grub.efiSupport = true;
  boot.loader.grub.device = "nodev";
  boot.loader.grub.useOSProber = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "mexaa";
  networking.networkmanager.enable = true;
  time.timeZone = "Asia/Almaty";
  i18n.defaultLocale = "ru_RU.UTF-8";

  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
    jack.enable = true;
  };

  users.users.mexaa = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      tree
    ];
    shell = pkgs.zsh;
  };
  environment.systemPackages = with pkgs; [
    gcc
    gnumake
    clang
    cmake
    rustup
    go
    llvm

    pkg-config
    git
    curl
    unzip
    alsa-lib
    pavucontrol
    pipewire
    zsh
  ];

  nixpkgs.config.allowUnfree = true;
  hardware.graphics.enable = true;
  hardware.nvidia = {
    modesetting.enable = true;
  };
  programs.niri.enable = true;
  programs.zsh.enable = true;

  system.stateVersion = "26.05";
}


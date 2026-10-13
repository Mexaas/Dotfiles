{ pkgs ? import <nixpkgs> {} }:

pkgs.buildGoModule rec {
  pname = "yamusic-tui";
  version = "main";

  src = pkgs.fetchFromGitHub {
    owner = "DECE2183";
    repo = "yamusic-tui";
    rev = version;
    hash = "sha256-WlXTCtJt5FaCQiZ1YtsgDVO4IOsfnxF09M/BWPABP+E=";
  };
  vendorHash = "sha256-WlXTCtJt5FaCQiZ1YtsgDVO4IOsfnxF09M/BWPABP+E=";
}

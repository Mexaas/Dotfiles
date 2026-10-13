{ pkgs ? import <nixpkgs> {} }:

pkgs.buildGoModule rec {
  pname = "yamusic-tui";
  version = "main";

  src = pkgs.fetchFromGithub {
    owner = "DECE2183";
    repo = "yamusic-tui";
    rev = version;
    hash = pkgs.fakeHash;
  };

  vendorHash = pkgs.fakeHash;
}

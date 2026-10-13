{
  description = "System build flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { nixpkgs, home-manager, ... }@inputs:
    let
      archetype = "x86_64-linux";
      user = "mexaa";
    in {
      nixosConfigurations.${user} = nixpkgs.lib.nixosSystem {
        system = archetype;
        modules = [
          ./nixos/hardware-configuration.nix
          ./nixos/configuration.nix

          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.users.${user} = import ./nixos/home.nix;
          }
        ];
      };
    };
}

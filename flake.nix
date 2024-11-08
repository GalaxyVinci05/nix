{
  description = "My personal NixOS configuration flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }@inputs:

    let
      system = "x86_64-linux";
    in {

      nixosConfigurations = {
        # Home machine
        asus = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          modules = [
            ./hosts/asus/configuration.nix
          ];
        };
      };

    };
}

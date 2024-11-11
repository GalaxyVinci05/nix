{
  description = "My personal NixOS configuration flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }@inputs: {

    inherit (nixpkgs) lib;
    nixosConfigurations = import ./hosts { inherit inputs; };
  };
}

{
  description = "My personal NixOS configuration flake";

  outputs = { self, nixpkgs, nixpkgs-stable, nvf, ... }@inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "aarch64-linux"
        "x86_64-linux"
        "i686-linux"
      ];

      imports = [
        ./hosts
      ];
    };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-24.11";
    nixpkgs-legacy.url = "github:NixOS/nixpkgs/nixos-23.11";

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };

    hyprland = {
      url = "github:hyprwm/Hyprland";
      # inputs.nixpkgs.follows = "nixpkgs";
    };

    nvf = {
      url = "github:notashelf/nvf?ref=v0.7";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

}

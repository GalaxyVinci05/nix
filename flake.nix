{
  description = "My personal NixOS configuration flake";

  outputs = { self, nixpkgs, nixpkgs-stable, nvf, ... }@inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "aarch64-linux"
        "x86_64-linux"
      ];

      imports = [
        # nixvim.nixosModules.nixvim
        ./hosts
      ];
    };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-24.05";

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };

    hyprland = {
      url = "git+https://github.com/hyprwm/hyprland?ref=refs/tags/v0.45.2&submodules=1";
      # inputs.nixpkgs.follows = "nixpkgs";
    };

    nvf = {
      url = "github:notashelf/nvf?ref=v0.7";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

}

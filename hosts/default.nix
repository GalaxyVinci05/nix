{ self, inputs, ... }: {

  flake.nixosConfigurations = let

    inherit (inputs.nixpkgs.lib) nixosSystem;
    inherit (inputs) nixpkgs;
    inherit (inputs) nixpkgs-stable;
    inherit (inputs) nixpkgs-legacy;

    # Builder function for specialArgs
    mkSpecialArgs = system: {
      inherit inputs self;

      pkgs-stable = import nixpkgs-stable {
        inherit system;
        config.allowUnfree = true;
        config.nvidia.acceptLicense = true;
      };

      pkgs-legacy = import nixpkgs-legacy {
        inherit system;
        config.allowUnfree = true;
        config.nvidia.acceptLicense = true;
      };
    };

    # Builder function to build against specific system
    mkNixosSystem = systemName: system: modulesList: nixosSystem {
      specialArgs = mkSpecialArgs system;
      modules = modulesList;
    };
  in {

    asus = mkNixosSystem "asus" "x86_64-linux" [
      ./asus
      ../envs/hypr
      ../modules/studio
    ];

    asusdesktop = mkNixosSystem "asusdesktop" "x86_64-linux" [
      ./asusdesktop
      ../envs/cinnamon
    ];

    dell = mkNixosSystem "dell" "x86_64-linux" [
      ./dell
      ../envs/plasma
      ../modules/studio
    ];

    rpi = mkNixosSystem "rpi" "aarch64-linux" [
      ./rpi
    ];

  };
}

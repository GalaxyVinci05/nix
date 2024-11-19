{ self, inputs, ... }: {

  flake.nixosConfigurations = let

    inherit (inputs.nixpkgs.lib) nixosSystem;
    inherit (inputs) nixpkgs;
    inherit (inputs) nixpkgs-stable;

    baseModules = [
      inputs.nixvim.nixosModules.nixvim
    ];

    # Builder function for specialArgs
    mkSpecialArgs = system: {
      inherit inputs self;

      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };

      pkgs-stable = import nixpkgs-stable {
        inherit system;
        config.allowUnfree = true;
      };
    };

    # Builder function to build against specific system
    mkNixosSystem = systemName: system: modulesList: nixosSystem {
      specialArgs = mkSpecialArgs system;
      modules = baseModules ++ modulesList;
    };
  in {

    asus = mkNixosSystem "asus" "x86_64-linux" ([ ../modules/asus ] ++ [ ./asus ]);
    dell = mkNixosSystem "dell" "x86_64-linux" ([ ../modules/dell ] ++ [ ./dell ]);
    rpi = mkNixosSystem "rpi" "aarch64-linux" ([ ../modules/rpi ] ++ [ ./rpi ]);
  };
}

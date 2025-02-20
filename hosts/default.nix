{ self, inputs, ... }: {

  flake.nixosConfigurations = let

    inherit (inputs.nixpkgs.lib) nixosSystem;
    inherit (inputs) nixpkgs;
    inherit (inputs) nixpkgs-stable;

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
      modules = modulesList;
    };
  in {

    asus = mkNixosSystem "asus" "x86_64-linux" ([ ../modules/asus ] ++ [ ./asus ]);
    asusdesktop = mkNixosSystem "asusdesktop" "x86_64-linux" ([ ../modules/asusdesktop ] ++ [ ./asusdesktop ]);
    dell = mkNixosSystem "dell" "x86_64-linux" ([ ../modules/dell ] ++ [ ./dell ]);
    rpi = mkNixosSystem "rpi" "aarch64-linux" ([ ../modules/rpi ] ++ [ ./rpi ]);
  };
}

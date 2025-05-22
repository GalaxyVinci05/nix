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
        config.nvidia.acceptLicense = true;
      };

      pkgs-stable = import nixpkgs-stable {
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

    asus = mkNixosSystem "asus" "x86_64-linux" ([ ./asus ] ++ [ ../modules/hypr ]);
    asusdesktop = mkNixosSystem "asusdesktop" "x86_64-linux" ([ ./asusdesktop ] ++ [ ../modules/xfce ]);
    dell = mkNixosSystem "dell" "x86_64-linux" ([ ./dell ] ++ [ ../modules/hypr ]);
    rpi = mkNixosSystem "rpi" "aarch64-linux" [ ./rpi ];
  };
}

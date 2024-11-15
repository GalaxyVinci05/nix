{ self, inputs, ... }: {

  flake.nixosConfigurations = let

    inherit (inputs.nixpkgs.lib) nixosSystem;
    inherit (inputs) nixpkgs-stable;

    # system = "x86_64-linux";
    specialArgs = { inherit inputs self; };
    # baseModules = [
    #   ../modules
    # ];
  in {

    asus = nixosSystem {
      inherit specialArgs;
      system = "x86_64-linux";
      modules = [ ../modules/asus ] ++ [ ./asus ];
    };

    dell = nixosSystem {
      inherit specialArgs;
      system = "x86_64-linux";
      modules = [ ../modules/dell ] ++ [ ./dell ];
    };

    rpi = nixosSystem {
      specialArgs = {
        inherit inputs self;
        pkgs-stable = import nixpkgs-stable { system = "aarch64-linux"; };
      };

      system = "aarch64-linux";
      modules = [ ../modules/rpi ] ++ [ ./rpi ];
    };
  };
}

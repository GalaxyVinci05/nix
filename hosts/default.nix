{ inputs, ... }:

let

  inherit (inputs) self;
  inherit (self) lib;

  # system = "x86_64-linux";
  specialArgs = { inherit lib inputs self; };
  # baseModules = [
  #   ../modules
  # ];
in {

  asus = lib.nixosSystem {
    inherit specialArgs;
    system = "x86_64-linux";
    modules = [ ../modules/asus ] ++ [ ./asus ];
  };

  dell = lib.nixosSystem {
    inherit specialArgs;
    system = "x86_64-linux";
    modules = [ ../modules/dell ] ++ [ ./dell ];
  };

  rpi = lib.nixosSystem {
    specialArgs = {
      inherit lib inputs self;
      pkgs-stable = inputs.nixpkgs-stable;
    };

    system = "aarch64-linux";
    modules = [ ../modules/rpi ] ++ [ ./rpi ];
  };
}

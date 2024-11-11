{ inputs, ... }:

let

  inherit (inputs) self;
  inherit (self) lib;

  system = "x86_64-linux";
  specialArgs = { inherit lib inputs self; };
  # baseModules = [
  #   ../modules
  # ];
in {

  asus = lib.nixosSystem {
    inherit system specialArgs;
    modules = [ ../modules/asus ] ++ [ ./asus ];
  };

  dell = lib.nixosSystem {
    inherit system specialArgs;
    modules = [ ../modules/dell ] ++ [ ./dell ];
  };
}

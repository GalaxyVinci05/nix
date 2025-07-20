{ inputs, ... }: {
  imports = [
    inputs.musnix.nixosModules.musnix
    ./packages.nix
    ./studio.nix
  ];
}

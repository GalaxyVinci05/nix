{ inputs, ... }: {
  imports = [
    inputs.musnix.nixosModules.musnix
    ./programs
    ./packages.nix
    ./studio.nix
  ];
}

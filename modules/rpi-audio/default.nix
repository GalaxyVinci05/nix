{ inputs, ... }: {
  imports = [
    inputs.nixos-hardware.nixosModules.raspberry-pi-4
    ./services
    ./packages.nix
    ./rpi-audio.nix
  ];
}

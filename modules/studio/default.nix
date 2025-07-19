{ inputs, ... }: {
  imports = [
    inputs.musnix.nixosModules.musnix
    ./packages.nix
    ./studio.nix
  ];

  services.pipewire.jack.enable = true;
  security.rtkit.enable = true;
  # Real-time audio
  musnix.enable = true;
}

_: {
  imports = [
    ./packages.nix
    ./studio.nix
  ];

  services.pipewire.jack.enable = true;
  security.rtkit.enable = true;
}

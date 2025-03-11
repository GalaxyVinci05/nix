{ inputs, ... }: {
  imports = [
    inputs.nvf.nixosModules.default
    ./plugins
    ./nvf.nix
  ];
}

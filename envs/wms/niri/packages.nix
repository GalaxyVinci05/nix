{ inputs, pkgs, ... }:

{
  # List packages specific to hypr ecosystem
  environment.systemPackages = with pkgs; [
    xwayland-satellite
  ];
}

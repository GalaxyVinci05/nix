{ pkgs, ... }:

{
  # List packages specific to hypr ecosystem
  environment.systemPackages = with pkgs; [
    alacritty
    picom
    xterm
  ];
}

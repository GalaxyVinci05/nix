{ inputs, pkgs, ... }:

{
  # List packages specific to hypr ecosystem
  environment.systemPackages = with pkgs; [
    hyprcursor
    hyprpaper
    hyprpicker
    hyprshot
  ];
}

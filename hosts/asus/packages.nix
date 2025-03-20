{ pkgs, pkgs-stable, ... }:

{
  # List asus packages installed in system profile.
  environment.systemPackages = with pkgs; [
    audacity
    # davinci-resolve
    kanshi
    kdePackages.kdenlive
    nvtopPackages.nvidia
    prismlauncher
    lunar-client
    unityhub
    wineWowPackages.stable
  ] ++ [

    # Stable packages
    pkgs-stable.blender
  ];
}

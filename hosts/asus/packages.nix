{ pkgs, pkgs-stable, ... }:

{
  # List asus packages installed in system profile.
  environment.systemPackages = with pkgs; [
    audacity
    jetbrains.clion
    # davinci-resolve
    kanshi
    kdePackages.kdenlive
    nvtopPackages.nvidia
    osu-lazer-bin
    prismlauncher
    lunar-client
    # unityhub
    wineWowPackages.stable
  ] ++ [

    # Stable packages
    pkgs-stable.blender
    pkgs-stable.unityhub
  ];
}

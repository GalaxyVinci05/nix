{ pkgs, pkgs-stable, ... }:

{
  # List asus packages installed in system profile.
  environment.systemPackages = with pkgs; [
    audacity
    easyeffects
    # jetbrains.clion
    davinci-resolve
    kanshi
    kdePackages.kdenlive
    nvtopPackages.nvidia
    osu-lazer-bin
    prismlauncher
    lunar-client
    # unityhub
  ] ++ [

    # Stable packages
    pkgs-stable.blender
    pkgs-stable.jetbrains.clion
    pkgs-stable.unityhub
  ];
}

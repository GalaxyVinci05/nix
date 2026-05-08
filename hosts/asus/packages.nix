{ inputs, pkgs, pkgs-stable, ... }:

{
  # List asus packages installed in system profile.
  environment.systemPackages = with pkgs; [
    audacity
    blender
    easyeffects
    jetbrains.clion
    kanshi
    kdePackages.kdenlive
    nvtopPackages.nvidia
    osu-lazer-bin
    prismlauncher
    jdk21_headless
    maven
    ydotool
    unityhub

    # inputs.nix-gaming.packages.${pkgs.stdenv.hostPlatform.system}.wine-osu
    # (inputs.nix-gaming.packages.${pkgs.stdenv.hostPlatform.system}.osu-stable.override { useUmu = false; })
  ] ++ [

    # Stable packages
  ];
}

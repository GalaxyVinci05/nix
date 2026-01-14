{ inputs, pkgs, pkgs-stable, ... }:

{
  # List asus packages installed in system profile.
  environment.systemPackages = with pkgs; [
    audacity
    easyeffects
    # jetbrains.clion
    davinci-resolve
    kanshi
    kdePackages.kdenlive
    lunar-client
    nvtopPackages.nvidia
    osu-lazer-bin
    prismlauncher
    # unityhub

    inputs.nix-gaming.packages.${pkgs.stdenv.hostPlatform.system}.wine-osu
    (inputs.nix-gaming.packages.${pkgs.stdenv.hostPlatform.system}.osu-stable.override { useUmu = false; })
  ] ++ [

    # Stable packages
    pkgs-stable.blender
    pkgs-stable.jetbrains.clion
    pkgs-stable.unityhub
  ];
}

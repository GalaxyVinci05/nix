{ pkgs, pkgs-stable, ... }:

{
  # List asus packages installed in system profile.
  environment.systemPackages = with pkgs; [
    audacity
    davinci-resolve
    kanshi
    kdePackages.kdenlive
    nvtopPackages.nvidia
    prismlauncher
    unityhub
  ] ++ [

    # Stable packages
    pkgs-stable.blender
  ];
}

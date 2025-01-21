{ pkgs, ... }:

{
  # List asus packages installed in system profile.
  environment.systemPackages = with pkgs; [
    audacity
    blender
    davinci-resolve
    kdePackages.kdenlive
    nvtopPackages.nvidia
    prismlauncher
    unityhub
  ];
}

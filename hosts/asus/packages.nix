{ pkgs, ... }:

{
  # List asus packages installed in system profile.
  environment.systemPackages = with pkgs; [
    audacity
    davinci-resolve
    kdePackages.kdenlive
    nvtopPackages.nvidia
    prismlauncher
    unityhub
  ];
}

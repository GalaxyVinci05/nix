{ pkgs, ... }:

{
  # List asus packages installed in system profile.
  environment.systemPackages = with pkgs; [
    audacity
    davinci-resolve
    kdenlive
    nvtopPackages.nvidia
    prismlauncher
    unityhub
  ];
}

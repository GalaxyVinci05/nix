{ pkgs-stable, ... }:

{
  # List asusdesktop packages installed in system profile.
  environment.systemPackages = with pkgs-stable; [
    # System
    btop
    fastfetch
    git
    nvtopPackages.nvidia
    tree
    unzip
    wget

    # Graphical
    audacity
    gimp
    guitarix
    kdePackages.kdenlive
    reaper
    spotify
  ];
}

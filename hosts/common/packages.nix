{ pkgs, ... }:

{
  # List common packages installed in system profile.
  environment.systemPackages = with pkgs; [

    # System
    acpi
    btop
    cava
    cpufetch
    fastfetch
    git
    pamixer
    unzip
    usbutils
    wget
    zip
    tree

    # Others
    discord
    gimp3
    hypnotix
    libreoffice
    nextcloud-client
    spotify
    tidal-hifi
    transmission_4-gtk
    vscode
    wineWowPackages.stable
    winetricks
  ]; # ++ [

    # Stable packages
    # pkgs-stable.cava
    # ];
}

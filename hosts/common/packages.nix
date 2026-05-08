{ pkgs, pkgs-stable, ... }:

{
  # List common packages installed in system profile.
  environment.systemPackages = with pkgs; [

    # System
    acpi
    adw-gtk3
    btop
    cava
    cpufetch
    fastfetch
    fzf
    git
    nwg-look
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
    # spotify
    telegram-desktop
    tidal-hifi
    # transmission_4-gtk
    # vscode
    # wineWow64Packages.stable
    winetricks
  ] ++ [

    # Stable packages
    # pkgs-stable.cava
    pkgs-stable.wineWow64Packages.stable
  ];
}

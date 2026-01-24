{ pkgs, ... }:

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
    spotify
    telegram-desktop
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

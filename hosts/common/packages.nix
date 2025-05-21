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
    gimp
    hypnotix
    libreoffice
    nextcloud-client
    spotify
    vscode
  ]; # ++ [

    # Stable packages
    # pkgs-stable.cava
    # ];
}

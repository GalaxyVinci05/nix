{ pkgs, pkgs-stable, ... }:

{
  # List common packages installed in system profile.
  environment.systemPackages = with pkgs; [

    # System
    acpi
    alacritty
    brightnessctl
    btop
    cava
    cpufetch
    dunst
    fastfetch
    ffmpegthumbnailer
    file-roller
    # firefox
    git
    glib
    gsettings-desktop-schemas
    hyprcursor
    hyprpaper
    hyprpicker
    hyprshot
    imv
    libcanberra-gtk3
    mpv
    # onedrive
    pamixer
    pulsemixer
    polkit_gnome
    rofi-wayland
    unzip
    # waybar
    wget
    wl-clipboard
    xdg-user-dirs
    tree

    # Others
    discord
    gimp
    hypnotix
    libreoffice
    nextcloud-client
    spotify
  ] ++ [

    # Stable packages
    # pkgs-stable.cava
  ];
}
